import { TileIDs } from "../../../constants/tiles";
import { MapTile } from "../map-tile";
import { TileSocket } from "../../../models/tile-socket";

export class SandTile extends MapTile {
  constructor() {
    super(
      TileIDs.SAND,
      TileSocket.fromGroup([
        TileIDs.SAND,
        TileIDs.GRASS,
        TileIDs.RIVER,
        TileIDs.DIRT,
      ]),
    );
  }
}
