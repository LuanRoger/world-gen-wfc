import { TileIDs } from "../../constants/tiles";
import { TileSocket } from "../tile-socket";
import { MapTile } from "./map-tile";

export class SuperTile extends MapTile {
  entropy: u8[];

  constructor(entropy: u8[]) {
    super(TileIDs.NULL, TileSocket.EMPTY);
    this.entropy = entropy;
  }
}
