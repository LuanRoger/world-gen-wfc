import { TileIDs } from "../../../constants/tiles";
import { MapTile } from "../map-tile";
import { TileSocket } from "../../../models/tile-socket";

export class MountainPeekTile extends MapTile {
  constructor() {
    super(
      TileIDs.MOUNTAIN_PEEK,
      TileSocket.fromGroup([TileIDs.MOUNTAIN_PEEK, TileIDs.MOUNTAIN]),
    );
  }
}
