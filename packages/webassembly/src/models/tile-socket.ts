import { copyArray } from "../utils/array";

export class TileSocket {
  static EMPTY: TileSocket = new TileSocket([], [], [], []);

  private fitTop: u8[];
  private fitRight: u8[];
  private fitBottom: u8[];
  private fitLeft: u8[];

  get FitTop(): u8[] {
    return this.fitTop;
  }
  get FitRight(): u8[] {
    return this.fitRight;
  }
  get FitBottom(): u8[] {
    return this.fitBottom;
  }
  get FitLeft(): u8[] {
    return this.fitLeft;
  }

  constructor(fitTop: u8[], fitRight: u8[], fitBottom: u8[], fitLeft: u8[]) {
    this.fitTop = fitTop;
    this.fitRight = fitRight;
    this.fitBottom = fitBottom;
    this.fitLeft = fitLeft;
  }

  static fromGroup(fit: u8[]): TileSocket {
    const length = fit.length;

    const top = new Array<u8>(length);
    const right = new Array<u8>(length);
    const bottom = new Array<u8>(length);
    const left = new Array<u8>(length);

    copyArray<u8>(fit, top);
    copyArray<u8>(fit, right);
    copyArray<u8>(fit, bottom);
    copyArray<u8>(fit, left);

    return new TileSocket(top, right, bottom, left);
  }
}
