/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * src/index/interate
 * @returns `src/models/metadata/world-map-metdata/WorldMapMetadata`
 */
export declare function interate(): __Record29<never>;
/** src/models/metadata/map-tile-metadata/MapTileMetadata */
declare interface __Record10<TOmittable> {
  /** @type `u8` */
  id: number | TOmittable;
  /** @type `~lib/array/Array<u8> | null` */
  isolationGroup: Array<number> | null | TOmittable;
}
/** src/models/metadata/world-map-metdata/WorldMapMetadata */
declare interface __Record29<TOmittable> {
  /** @type `u16` */
  width: number | TOmittable;
  /** @type `u16` */
  height: number | TOmittable;
  /** @type `u8` */
  atlasId: number | TOmittable;
  /** @type `~lib/array/Array<~lib/array/Array<src/models/metadata/map-tile-metadata/MapTileMetadata>>` */
  mapTiles: Array<Array<__Record10<never>>>;
}
