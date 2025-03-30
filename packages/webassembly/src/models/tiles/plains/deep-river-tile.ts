import { TileIDs } from "../../../constants/tiles";
import { MapTile } from "../map-tile";
import { TileSocket } from "../../../models/tile-socket";

export class DeepRiverTile extends MapTile {
  constructor() {
    super(
      TileIDs.DEEP_RIVER,
      TileSocket.fromGroup([TileIDs.DEEP_RIVER, TileIDs.RIVER]),
    );
  }
}
