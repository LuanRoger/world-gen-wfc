/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * src/index/getGrassTile
 * @returns `src/models/metadata/maptile/MapTileMetadata`
 */
export declare function getGrassTile(): __Record10<never>;
/** src/models/metadata/maptile/MapTileMetadata */
declare interface __Record10<TOmittable> {
  /** @type `u8` */
  id: number | TOmittable;
  /** @type `~lib/array/Array<u8> | null` */
  isolationGroup: Array<number> | null | TOmittable;
}
