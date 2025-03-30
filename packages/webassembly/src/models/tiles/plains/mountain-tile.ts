import { TileIDs } from "../../../constants/tiles";
import { MapTile } from "../map-tile";
import { TileSocket } from "../../../models/tile-socket";

export class MountainTile extends MapTile {
  constructor() {
    super(
      TileIDs.ROCK,
      TileSocket.fromGroup([
        TileIDs.MOUNTAIN,
        TileIDs.MOUNTAIN_PEEK,
        TileIDs.GRASS,
        TileIDs.SAND,
      ]),
    );
  }
}
