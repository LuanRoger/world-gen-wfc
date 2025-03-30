import { MapTile } from "../models/tiles/map-tile";
import { SuperTile } from "../models/tiles/super-tile";
import { Random } from "../utils/random";
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

    const wavePossition: WavePossition[][] = this.initializeWave();
    this.wave = new Wave(width, height, wavePossition);
  }

  getValidInitialTiles(): u8[] {
    return this.tileAtlas.validInitialTiles();
  }

  private initializeWave(): WavePossition[][] {
    const wavePossition: WavePossition[][] = new Array<Array<WavePossition>>(
      this.width,
    );
    for (let x: u16 = 0; x < this.width; x++) {
      wavePossition[x] = [];
      for (let y: u16 = 0; y < this.height; y++) {
        wavePossition[x][y] = new WavePossition(
          this.tileAtlas.validInitialTiles(),
        );
      }
    }
    return wavePossition;
  }

  getSmallerEntropyPossition(
    includeConflicts: boolean = false,
  ): WavePossitionPoint | null {
    let smallerEntropyRow: u16 = 0;
    let smallerEntropyCol: u16 = 0;
    let smallerEntropyLength: u16 = Number.MAX_SAFE_INTEGER;
    for (let row = 0; row < this.height; row++) {
      for (let col = 0; col < this.width; col++) {
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

  isTileIsolation(tilePossition: WavePossitionPoint): boolean {
    const possition = this.getPossitionAtPoint(tilePossition);
    const tileAtPossition = this.getTileAtPossition(
      tilePossition.row,
      tilePossition.column,
    );

    if (
      possition.conflict() ||
      !possition.collapsed() ||
      tileAtPossition.isolationGroup == null
    ) {
      return true;
    }

    const possitionArea = new WavePossitionArea(tilePossition);
    const allowedSideTilesByIsolationRule = tileAtPossition.isolationGroup;

    try {
      const onTopPossition = this.getPossitionAtPoint(possitionArea.Top);
      if (onTopPossition.collapsed()) {
        const topTileId = onTopPossition.entropy[0];
        const isAllowedTopTile =
          allowedSideTilesByIsolationRule.includes(topTileId);

        if (isAllowedTopTile) {
          return true;
        }
      }
    } catch (error) {}

    try {
      const onRightPossition = this.getPossitionAtPoint(possitionArea.Right);
      if (onRightPossition.collapsed()) {
        const rightTileId = onRightPossition.entropy[0];
        const isAllowedRightTile =
          allowedSideTilesByIsolationRule.includes(rightTileId);

        if (isAllowedRightTile) {
          return true;
        }
      }
    } catch (error) {}

    try {
      const onBottomPossition = this.getPossitionAtPoint(possitionArea.Bottom);
      if (onBottomPossition.collapsed()) {
        const bottomTileId = onBottomPossition.entropy[0];
        const isAllowedBottomTile =
          allowedSideTilesByIsolationRule.includes(bottomTileId);

        if (isAllowedBottomTile) {
          return true;
        }
      }
    } catch (error) {}

    try {
      const onLeftPossition = this.getPossitionAtPoint(possitionArea.Left);
      if (onLeftPossition.collapsed()) {
        const leftTileId = onLeftPossition.entropy[0];
        const isAllowedLeftTile =
          allowedSideTilesByIsolationRule.includes(leftTileId);

        if (isAllowedLeftTile) {
          return true;
        }
      }
    } catch (error) {}

    return false;
  }

  get isAllCollapsed(): boolean {
    return this.wave.isAllCollapsed();
  }

  getTileAtPossition(row: u16, column: u16): MapTile {
    const possition: WavePossition = this.wave.wavePossition[row][column];
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

  checkAreaOutOfBound(possitionArea: WavePossitionArea): {
    top: boolean;
    right: boolean;
    bottom: boolean;
    left: boolean;
  } {
    const result = {
      top: false,
      right: false,
      bottom: false,
      left: false,
    };

    result.top =
      possitionArea.TopRaw < 0 || possitionArea.TopRaw >= this.height;
    result.right =
      possitionArea.RightRaw < 0 || possitionArea.RightRaw >= this.width;
    result.bottom =
      possitionArea.BottomRaw < 0 || possitionArea.BottomRaw >= this.height;
    result.left =
      possitionArea.LeftRaw < 0 || possitionArea.LeftRaw >= this.width;

    return result;
  }

  hasAnyOutOfBounds(possitionArea: WavePossitionArea): boolean {
    const bounds = this.checkAreaOutOfBound(possitionArea);
    return bounds.top || bounds.right || bounds.bottom || bounds.left;
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

    if (this.tileAtlas.collapseFrequency) {
      const filteredFrequencies: CollapseFrequency[] = [];

      for (let i = 0; i < this.tileAtlas.collapseFrequency.length; i++) {
        const frequency = this.tileAtlas.collapseFrequency[i];
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
