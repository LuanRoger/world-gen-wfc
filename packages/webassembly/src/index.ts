import { PlainAtlas } from "./models/atlas/plains-atlas";
import { MapTileMetadata } from "./models/metadata/map-tile-metadata";
import { WorldMapMetadata } from "./models/metadata/world-map-metdata";
import { GrassTile } from "./models/tiles/plains";
import { WorldMap } from "./models/world-map";
import { WaveMap } from "./wfc/wave-map";

export function test(): u16 {
  const wave = new WaveMap(16, 16, PlainAtlas.instance);
  const height = wave.getHeight();

  return height;
}
