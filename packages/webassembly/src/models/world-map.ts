import { MapTileMetadata } from "./metadata/map-tile-metadata";
import { WorldMapMetadata } from "./metadata/world-map-metdata";
import { EmptyTile } from "./tiles/empty-tile";

export class WorldMap extends WorldMapMetadata {
  constructor(width: u16, height: u16, atlasId: u8) {
    super();
    this.width = width;
    this.height = height;
    this.atlasId = atlasId;
    this.mapTiles = new Array<Array<MapTileMetadata>>(width * height);
  }

  initializeEmptyMap(): void {
    for (let x: u16 = 0; x < this.width; x++) {
      this.mapTiles[x] = new Array<MapTileMetadata>(this.height);
      for (let y: u16 = 0; y < this.height; y++) {
        this.mapTiles[x][y] = new EmptyTile();
      }
    }
  }
}
