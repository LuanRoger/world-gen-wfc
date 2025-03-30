import { GenerationStep } from "../constants/generation-step";
import { WfcCallKind } from "../constants/wfc-call-kind";
import { MapTileMetadata } from "../models/metadata/map-tile-metadata";
import { TileSocket } from "../models/tile-socket";
import { MapTile } from "../models/tiles/map-tile";
import { WorldMap } from "../models/world-map";
import { BoundresCheckResult } from "./boundries-check-result";
import { TileAtlas } from "./tile-atlas";
import { WaveMap } from "./wave-map";
import { WavePossition } from "./wave-possition";
import { WavePossitionArea } from "./wave-possition-area";
import { WavePossitionPoint } from "./wave-possition-point";

export class WorldGeneration {
  private width: u16;
  private height: u16;
  private atlasId: u8;
  private seed: u32;
  private waveMap: WaveMap;
  private updateMapInstance: boolean = true;
  private generationStep: u8 = GenerationStep.IDLE;
  private clean: boolean = false;

  constructor(
    width: u16,
    height: u16,
    seed: u32,
    tileAtlas: TileAtlas,
    updateMapInstance: boolean = true,
  ) {
    this.width = width;
    this.height = height;
    this.seed = seed;
    this.waveMap = new WaveMap(width, height, tileAtlas);
    this.atlasId = tileAtlas.id;
    this.updateMapInstance = updateMapInstance;
  }

  get isAllCollapsed(): boolean {
    return this.waveMap.isAllCollapsed;
  }

  getWorldMap(): WorldMap {
    const mapTiles: Array<Array<MapTileMetadata>> = new Array<
      Array<MapTileMetadata>
    >(this.width * this.height);

    for (let x: u16 = 0; x < this.width; x++) {
      mapTiles[x] = new Array<MapTileMetadata>(this.height);
      for (let y: u16 = 0; y < this.height; y++) {
        const wavePossitonPoint: WavePossitionPoint = new WavePossitionPoint(
          x,
          y,
        );
        const wavePossition =
          this.waveMap.getPossitionAtPoint(wavePossitonPoint);

        const entropy: u8 = wavePossition.entropy[0];
        const mapTile: MapTile = this.waveMap.getTileById(entropy);
        mapTiles[x][y] = mapTile;
      }
    }

    return new WorldMap(this.width, this.height, this.atlasId, mapTiles);
  }

  wfc(callKind: u8 = WfcCallKind.INTERATION): void {
    this.generationStep = GenerationStep.WAVE_COLLAPSE;

    switch (callKind) {
      case WfcCallKind.INTERATION:
        this.interate();
        break;
      case WfcCallKind.COMPLETE:
        this.complete();
        break;
    }

    if (this.isAllCollapsed && this.clean) {
      this.generationStep = GenerationStep.FINISHED;
    }
  }

  private complete(): void {
    while (!this.isAllCollapsed && !this.clean) {
      this.interate();
    }
  }

  private interate(): void {
    const wavePossition: WavePossitionPoint =
      this.waveMap.getSmallerEntropyPossition();
    const tileId: u8 = this.waveMap.getRandomTileFromPossition(wavePossition);
    this.waveMap.updateEntropyAt(wavePossition, [tileId]);

    this.generationStep = GenerationStep.PROPAGATION;
    this.propagateState();

    if (
      this.waveMap.hasOnlyConflicts() ||
      this.generationStep == GenerationStep.POST_GENERATION_PROCESSING
    ) {
      this.postMapGenerationClear();
    }
  }

  private postMapGenerationClear(): void {
    this.generationStep = GenerationStep.POST_GENERATION_PROCESSING;

    let noConflict: boolean = true;
    let noIsolation: boolean = true;
    for (let x: u16 = 0; x < this.width; x++) {
      for (let y: u16 = 0; y < this.height; y++) {
        const possitionPoint: WavePossitionPoint = new WavePossitionPoint(x, y);
        const wavePossition: WavePossition =
          this.waveMap.getPossitionAtPoint(possitionPoint);

        const conflictUncollapsed: boolean = this.uncollapseConflictTiles(
          possitionPoint,
          wavePossition,
        );
        const isolationFixed: boolean = this.clearTileIsolation(possitionPoint);
        if (conflictUncollapsed) {
          noConflict = false;
        }
        if (isolationFixed) {
          noIsolation = false;
        }
      }
    }

    this.generationStep = GenerationStep.PROPAGATION;
    this.clean = noConflict && noIsolation;
  }

  private propagateState(): void {
    for (let x: u16 = 0; x < this.width; x++) {
      for (let y: u16 = 0; y < this.height; y++) {
        const possitionPoint: WavePossitionPoint = new WavePossitionPoint(x, y);
        const wavePossition: WavePossition =
          this.waveMap.getPossitionAtPoint(possitionPoint);
        if (wavePossition.collapsed()) {
          continue;
        }

        const socketTileMap: TileSocket = this.waveMap
          .getTileAtPossition(possitionPoint)
          .getTileSocket();
        const possitionArea: WavePossitionArea = new WavePossitionArea(
          possitionPoint,
        );
        const boundresCheckResult: BoundresCheckResult =
          this.waveMap.checkAreaOutOfBound(possitionArea);

        if (!boundresCheckResult.Top) {
          const wavePossitionTop: WavePossition =
            this.waveMap.getPossitionAtPoint(possitionArea.Top);
          const newEntropyTop: u8[] = this.intersectArrays(
            wavePossitionTop.entropy,
            socketTileMap.FitTop,
          );
          this.waveMap.updateEntropyAt(possitionArea.Top, newEntropyTop);
        }
        if (!boundresCheckResult.Bottom) {
          const wavePossitionBottom: WavePossition =
            this.waveMap.getPossitionAtPoint(possitionArea.Bottom);
          const newEntropyBottom: u8[] = this.intersectArrays(
            wavePossitionBottom.entropy,
            socketTileMap.FitBottom,
          );
          this.waveMap.updateEntropyAt(possitionArea.Bottom, newEntropyBottom);
        }
        if (!boundresCheckResult.Left) {
          const wavePossitionLeft: WavePossition =
            this.waveMap.getPossitionAtPoint(possitionArea.Left);
          const newEntropyLeft: u8[] = this.intersectArrays(
            wavePossitionLeft.entropy,
            socketTileMap.FitLeft,
          );
          this.waveMap.updateEntropyAt(possitionArea.Left, newEntropyLeft);
        }
        if (!boundresCheckResult.Right) {
          const wavePossitionRight: WavePossition =
            this.waveMap.getPossitionAtPoint(possitionArea.Right);
          const newEntropyRight: u8[] = this.intersectArrays(
            wavePossitionRight.entropy,
            socketTileMap.FitRight,
          );
          this.waveMap.updateEntropyAt(possitionArea.Right, newEntropyRight);
        }
      }
    }
  }

  private intersectArrays(array1: u8[], array2: u8[]): u8[] {
    const result: u8[] = [];

    for (let i = 0; i < array1.length; i++) {
      for (let j = 0; j < array2.length; j++) {
        if (array1[i] == array2[j]) {
          result.push(array1[i]);
          break;
        }
      }
    }

    return result;
  }

  private uncollapseConflictTiles(
    wavePossitionPoint: WavePossitionPoint,
    wavePossition: WavePossition,
  ): boolean {
    if (!wavePossition.conflict()) {
      return false;
    }

    this.waveMap.updateEntropyAt(
      wavePossitionPoint,
      this.waveMap.getValidInitialTiles(),
    );
    const possitionArea: WavePossitionArea = new WavePossitionArea(
      wavePossitionPoint,
    );
    const boundresCheckResult: BoundresCheckResult =
      this.waveMap.checkAreaOutOfBound(possitionArea);

    if (!boundresCheckResult.Top) {
      this.waveMap.updateEntropyAt(
        possitionArea.Top,
        this.waveMap.getValidInitialTiles(),
      );
    }
    if (!boundresCheckResult.Bottom) {
      this.waveMap.updateEntropyAt(
        possitionArea.Bottom,
        this.waveMap.getValidInitialTiles(),
      );
    }
    if (!boundresCheckResult.Left) {
      this.waveMap.updateEntropyAt(
        possitionArea.Left,
        this.waveMap.getValidInitialTiles(),
      );
    }
    if (!boundresCheckResult.Right) {
      this.waveMap.updateEntropyAt(
        possitionArea.Right,
        this.waveMap.getValidInitialTiles(),
      );
    }

    return true;
  }

  private clearTileIsolation(wavePossitionPoint: WavePossitionPoint): boolean {
    const isIsolated: boolean = this.waveMap.isTileIsolated(wavePossitionPoint);
    if (!isIsolated) {
      return false;
    }

    this.waveMap.updateEntropyAt(
      wavePossitionPoint,
      this.waveMap.getValidInitialTiles(),
    );
    return true;
  }
}
