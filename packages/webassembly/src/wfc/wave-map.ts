import { MapTile } from "../models/tiles/map-tile";
import { SuperTile } from "../models/tiles/super-tile";
import { Random } from "../utils/random";
import { BoundresCheckResult } from "./boundries-check-result";
import { CollapseFrequency } from "./collapse-frequency";
import { TileAtlas } from "./tile-atlas";
import { Wave } from "./wave";
import { WavePossition } from "./wave-possition";
import { WavePossitionArea } from "./wave-possition-area";
import { WavePossitionPoint } from "./wave-possition-point";

export class WaveMap {
  private width: u16;
  private height: u16;
  private tileAtlas: TileAtlas;
  private wave: Wave;
  private rng: Random;

  getWidth(): u16 {
    return this.width;
  }
  getHeight(): u16 {
    return this.height;
  }

  constructor(width: u16, height: u16, tileAtlas: TileAtlas) {
    this.width = width;
    this.height = height;
    this.tileAtlas = tileAtlas;
    this.rng = new Random();

    const wavePossition: WavePossition[][] = WaveMap.initializeWave(
      width,
      height,
      tileAtlas.validInitialTiles(),
    );
    this.wave = new Wave(width, height, wavePossition);
  }

  getValidInitialTiles(): u8[] {
    return this.tileAtlas.validInitialTiles();
  }

  static initializeWave(
    width: u16,
    height: u16,
    vaidTiles: u8[],
  ): WavePossition[][] {
    const wavePossition: WavePossition[][] = new Array<Array<WavePossition>>(
      width,
    );

    for (let x: u16 = 0; x < width; x++) {
      wavePossition[x] = [];
      for (let y: u16 = 0; y < height; y++) {
        wavePossition[x][y] = new WavePossition(vaidTiles);
      }
    }
    return wavePossition;
  }

  getSmallerEntropyPossition(
    includeConflicts: boolean = false,
  ): WavePossitionPoint {
    let smallerEntropyRow: u16 = 0;
    let smallerEntropyCol: u16 = 0;
    let smallerEntropyLength: i32 = 999;
    for (let row: u16 = 0; row < this.height; row++) {
      for (let col: u16 = 0; col < this.width; col++) {
        const wavePossition: WavePossition = this.wave.wavePossition[row][col];

        if (
          wavePossition.collapsed() ||
          (!includeConflicts && wavePossition.conflict()) ||
          wavePossition.entropy.length >= smallerEntropyLength
        )
          continue;

        smallerEntropyLength = wavePossition.entropy.length;
        smallerEntropyRow = row;
        smallerEntropyCol = col;
      }
    }

    return new WavePossitionPoint(smallerEntropyRow, smallerEntropyCol);
  }

  getPossitionAtPoint(point: WavePossitionPoint): WavePossition {
    return this.wave.wavePossition[point.row][point.column];
  }

  updateEntropyAt(possition: WavePossitionPoint, entropy: u8[]): void {
    this.wave.updateEntropyAt(possition, entropy);
  }

  isTileIsolated(tilePossition: WavePossitionPoint): boolean {
    const possition = this.getPossitionAtPoint(tilePossition);
    const possitionPoint: WavePossitionPoint = new WavePossitionPoint(
      tilePossition.row,
      tilePossition.column,
    );
    const tileAtPossition = this.getTileAtPossition(possitionPoint);
    const isolationGroup: u8[] | null = tileAtPossition.isolationGroup;

    if (
      possition.conflict() ||
      !possition.collapsed() ||
      isolationGroup == null
    ) {
      return true;
    }

    const possitionArea = new WavePossitionArea(tilePossition);
    const allowedSideTilesByIsolationRule = tileAtPossition.isolationGroup;

    const onTopPossition = this.getPossitionAtPoint(possitionArea.Top);
    if (onTopPossition.collapsed()) {
      const topTileId = onTopPossition.entropy[0];
      const isAllowedTopTile = isolationGroup.includes(topTileId);

      if (isAllowedTopTile) {
        return true;
      }
    }

    const onRightPossition = this.getPossitionAtPoint(possitionArea.Right);
    if (onRightPossition.collapsed()) {
      const rightTileId = onRightPossition.entropy[0];
      const isAllowedRightTile = isolationGroup.includes(rightTileId);

      if (isAllowedRightTile) {
        return true;
      }
    }

    const onBottomPossition = this.getPossitionAtPoint(possitionArea.Bottom);
    if (onBottomPossition.collapsed()) {
      const bottomTileId = onBottomPossition.entropy[0];
      const isAllowedBottomTile = isolationGroup.includes(bottomTileId);

      if (isAllowedBottomTile) {
        return true;
      }
    }

    const onLeftPossition = this.getPossitionAtPoint(possitionArea.Left);
    if (onLeftPossition.collapsed()) {
      const leftTileId = onLeftPossition.entropy[0];
      const isAllowedLeftTile = isolationGroup.includes(leftTileId);

      if (isAllowedLeftTile) {
        return true;
      }
    }

    return false;
  }

  get isAllCollapsed(): boolean {
    return this.wave.isAllCollapsed();
  }

  getTileAtPossition(possitionPoint: WavePossitionPoint): MapTile {
    const possition: WavePossition =
      this.wave.wavePossition[possitionPoint.row][possitionPoint.column];
    if (possition.conflict() || !possition.collapsed()) {
      return new SuperTile(possition.entropy);
    }

    const tileId: u8 = possition.entropy[0];
    const tile: MapTile = this.tileAtlas.getAtlasTileById(tileId);
    return tile;
  }

  getCountOfCollapsedTiles(): u16 {
    let count = 0;
    for (let x: u16 = 0; x < this.width; x++) {
      for (let y: u16 = 0; y < this.height; y++) {
        if (
          this.wave.wavePossition[x][y].collapsed() &&
          !this.wave.wavePossition[x][y].conflict()
        ) {
          count++;
        }
      }
    }

    return count;
  }

  hasOnlyConflicts(): boolean {
    for (let x: u16 = 0; x < this.width; x++) {
      for (let y: u16 = 0; y < this.height; y++) {
        if (
          !this.wave.wavePossition[x][y].conflict() &&
          !this.wave.wavePossition[x][y].collapsed()
        ) {
          return false;
        }
      }
    }

    return true;
  }

  checkAreaOutOfBound(possitionArea: WavePossitionArea): BoundresCheckResult {
    return new BoundresCheckResult(
      possitionArea.TopRaw < 0 || possitionArea.TopRaw >= this.height,
      possitionArea.RightRaw < 0 || possitionArea.RightRaw >= this.width,
      possitionArea.BottomRaw < 0 || possitionArea.BottomRaw >= this.height,
      possitionArea.LeftRaw < 0 || possitionArea.LeftRaw >= this.width,
    );
  }

  hasAnyOutOfBounds(possitionArea: WavePossitionArea): boolean {
    return this.checkAreaOutOfBound(possitionArea).itHasAnyOutBounds();
  }

  getCountOfConflictTiles(): u16 {
    let count = 0;
    for (let x: u16 = 0; x < this.width; x++) {
      for (let y: u16 = 0; y < this.height; y++) {
        if (this.wave.wavePossition[x][y].conflict()) {
          count++;
        }
      }
    }

    return count;
  }

  getRandomTileFromPossition(possition: WavePossitionPoint): u8 {
    const wavePossition = this.getPossitionAtPoint(possition);
    const collapseFrequencies: CollapseFrequency[] | null =
      this.tileAtlas.collapseFrequency;

    if (collapseFrequencies != null) {
      const filteredFrequencies: CollapseFrequency[] = [];

      for (let i = 0; i < collapseFrequencies.length; i++) {
        const frequency = collapseFrequencies[i];
        for (let j = 0; j < wavePossition.entropy.length; j++) {
          if (frequency.tileId == wavePossition.entropy[j]) {
            filteredFrequencies.push(frequency);
            break;
          }
        }
      }

      return this.rng.pickTileIdByFrequency(filteredFrequencies);
    }

    const tileIndex = this.rng.generateRandomIndex(
      wavePossition.entropy.length,
    );
    return wavePossition.entropy[tileIndex];
  }
}
