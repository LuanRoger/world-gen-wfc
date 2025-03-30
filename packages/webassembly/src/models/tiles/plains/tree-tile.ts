import { TileIDs } from "../../../constants/tiles";
import { MapTile } from "../map-tile";
import { TileSocket } from "../../../models/tile-socket";

export class TreeTile extends MapTile {
  constructor() {
    super(
      TileIDs.TREE,
      TileSocket.fromGroup([TileIDs.TREE, TileIDs.GRASS, TileIDs.DIRT]),
    );
  }
}
