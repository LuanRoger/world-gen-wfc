import { WavePossitionPoint } from "./wave-possition-point";

export class WavePossitionArea {
  private topRaw: u16;
  private bottomRaw: u16;
  private leftRaw: u16;
  private rightRaw: u16;

  private top: WavePossitionPoint;
  private bottom: WavePossitionPoint;
  private left: WavePossitionPoint;
  private right: WavePossitionPoint;

  get TopRaw(): u16 {
    return this.topRaw;
  }
  get BottomRaw(): u16 {
    return this.bottomRaw;
  }
  get LeftRaw(): u16 {
    return this.leftRaw;
  }
  get RightRaw(): u16 {
    return this.rightRaw;
  }

  get Top(): WavePossitionPoint {
    return this.top;
  }
  get Bottom(): WavePossitionPoint {
    return this.bottom;
  }
  get Left(): WavePossitionPoint {
    return this.left;
  }
  get Right(): WavePossitionPoint {
    return this.right;
  }

  constructor(possitionPoint: WavePossitionPoint) {
    this.topRaw = possitionPoint.row - 1;
    this.bottomRaw = possitionPoint.row + 1;
    this.leftRaw = possitionPoint.column - 1;
    this.rightRaw = possitionPoint.column + 1;

    this.top = new WavePossitionPoint(this.topRaw, possitionPoint.column);
    this.bottom = new WavePossitionPoint(this.bottomRaw, possitionPoint.column);
    this.left = new WavePossitionPoint(possitionPoint.row, this.leftRaw);
    this.right = new WavePossitionPoint(possitionPoint.row, this.rightRaw);
  }
}
