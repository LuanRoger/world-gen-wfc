import { PlainAtlas } from "./models/atlas/plains-atlas";
import { MapTileMetadata } from "./models/metadata/maptile";
import { GrassTile } from "./models/tiles/plains";
import { WaveMap } from "./wfc/wave-map";

export function getGrassTile(): MapTileMetadata {
  const wave = new WaveMap(16, 16, PlainAtlas.instance);
  const grassTile = new GrassTile();

  return grassTile;
}
