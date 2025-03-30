import { MapTileMetadata } from "./models/metadata/maptile";
import { GrassTile } from "./models/tiles/plains";

export function getGrassTile(): MapTileMetadata {
  const grassTile = new GrassTile();

  return grassTile;
}
