import { TileIDs } from "../../../constants/tiles";
import { MapTile } from "../map-tile";
import { TileSocket } from "../../../models/tile-socket";

export class DirtTile extends MapTile {
  constructor() {
    super(TileIDs.DIRT, TileSocket.fromGroup([TileIDs.DIRT, TileIDs.GRASS]));
  }
}
