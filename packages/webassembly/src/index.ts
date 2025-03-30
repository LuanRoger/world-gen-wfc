import { WfcCallKind } from "./constants/wfc-call-kind";
import { PlainAtlas } from "./models/atlas/plains-atlas";
import { MapTileMetadata } from "./models/metadata/map-tile-metadata";
import { WorldMapMetadata } from "./models/metadata/world-map-metdata";
import { GrassTile } from "./models/tiles/plains";
import { WorldMap } from "./models/world-map";
import { WaveMap } from "./wfc/wave-map";
import { WorldGeneration } from "./wfc/world-generation";

const generator = new WorldGeneration(10, 10, 0, new PlainAtlas());

export function interate(): WorldMapMetadata {
  generator.wfc(WfcCallKind.INTERATION);

  return generator.getWorldMap();
}
