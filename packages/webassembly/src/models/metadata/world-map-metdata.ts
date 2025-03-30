import { MapTileMetadata } from "./map-tile-metadata";

export class WorldMapMetadata {
  width: u16;
  height: u16;
  atlasId: u8;
  mapTiles: Array<Array<MapTileMetadata>> = new Array<Array<MapTileMetadata>>(
    0,
  );
}
