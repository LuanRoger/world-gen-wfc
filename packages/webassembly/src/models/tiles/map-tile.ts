import { MapTileMetadata } from "../metadata/map-tile-metadata";
import { TileSocket } from "../tile-socket";

export class MapTile extends MapTileMetadata {
  private tileSocket: TileSocket;

  constructor(
    id: u8,
    tileSocket: TileSocket,
    isolationGroup: u8[] | null = null,
  ) {
    super();
    this.id = id;
    this.isolationGroup = isolationGroup;
    this.tileSocket = tileSocket;
  }

  getId(): u8 {
    return this.id;
  }
  getTileSocket(): TileSocket {
    return this.tileSocket;
  }
  getIsolationGroup(): u8[] | null {
    return this.isolationGroup ? this.isolationGroup : null;
  }
}
