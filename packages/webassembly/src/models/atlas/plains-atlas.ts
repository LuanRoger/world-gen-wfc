import { AtlasIDs } from "../../constants/atlas";
import { TileAtlas } from "../../wfc/tile-atlas";
import {
  DeepRiverTile,
  DirtTile,
  GrassTile,
  MountainPeekTile,
  MountainTile,
  RiverTile,
  SandTile,
} from "../tiles/plains";

export class PlainAtlas extends TileAtlas {
  static instance: PlainAtlas = new PlainAtlas();

  constructor() {
    super(AtlasIDs.PLAINS, [
      new GrassTile(),
      new MountainTile(),
      new MountainPeekTile(),
      new RiverTile(),
      new DeepRiverTile(),
      new SandTile(),
      new DirtTile(),
    ]);
  }
}
