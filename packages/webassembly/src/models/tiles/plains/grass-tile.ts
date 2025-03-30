import { TileIDs } from "../../../constants/tiles";
import { MapTile } from "../map-tile";
import { TileSocket } from "../../../models/tile-socket";

export class GrassTile extends MapTile {
  constructor() {
    super(
      TileIDs.GRASS,
      TileSocket.fromGroup([
        TileIDs.GRASS,
        TileIDs.TREE,
        TileIDs.MOUNTAIN,
        TileIDs.SAND,
      ]),
    );
  }
}
