import { WfcCallKind } from "./constants/wfc-call-kind";
import { PlainAtlas } from "./models/atlas/plains-atlas";
import { MapTileMetadata } from "./models/metadata/map-tile-metadata";
import { WorldMapMetadata } from "./models/metadata/world-map-metdata";
import { GrassTile } from "./models/tiles/plains";
import { WorldMap } from "./models/world-map";
import { WaveMap } from "./wfc/wave-map";
import { WorldGeneration } from "./wfc/world-generation";

export function interate(): u16 {
  const generator = new WorldGeneration(16, 16, 0, new PlainAtlas());
  generator.wfc(WfcCallKind.INTERATION);

  return 0;
}
