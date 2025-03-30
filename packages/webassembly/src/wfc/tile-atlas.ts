import { MapTile } from "../models/tiles/map-tile";
import { CollapseFrequency } from "./collapse-frequency";

export class TileAtlas {
  id: u8;
  mapTiles: MapTile[];
  collapseFrequency: CollapseFrequency[] | null;

  constructor(
    id: u8,
    mapTiles: MapTile[],
    collapseFrequency: CollapseFrequency[] | null = null,
  ) {
    this.id = id;
    this.mapTiles = mapTiles;
    this.collapseFrequency = collapseFrequency;
  }

  getAtlasTileById(id: u8): MapTile {
    for (let i = 0; i < this.mapTiles.length; i++) {
      if (this.mapTiles[i].id == id) {
        return this.mapTiles[i];
      }
    }

    return this.mapTiles[0];
  }

  validInitialTiles(): u8[] {
    const tileIds = new Array<u8>(this.mapTiles.length);

    for (let i = 0; i < this.mapTiles.length; i++) {
      tileIds[i] = this.mapTiles[i].id;
    }

    return tileIds;
  }
}
