import { TileIDs } from "../../../constants/tiles";
import { MapTile } from "../map-tile";
import { TileSocket } from "../../../models/tile-socket";

export class RiverTile extends MapTile {
  constructor() {
    super(
      TileIDs.RIVER,
      TileSocket.fromGroup([
        TileIDs.RIVER,
        TileIDs.DEEP_RIVER,
        TileIDs.SAND,
        TileIDs.DIRT,
      ]),
    );
  }
}
