import { TileIDs } from "../../constants/tiles";
import { TileSocket } from "../tile-socket";
import { MapTile } from "./map-tile";

export class EmptyTile extends MapTile {
  static instance: EmptyTile | null;
  static getInstance(): EmptyTile {
    if (this.instance === null) {
      this.instance = new EmptyTile();
    }
    return this.instance;
  }

  constructor() {
    super(TileIDs.NULL, TileSocket.EMPTY);
  }
}
