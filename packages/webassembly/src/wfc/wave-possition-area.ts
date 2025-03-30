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
    const topRaw: u16 = possitionPoint.row - 1;
    const bottomRaw: u16 = possitionPoint.row + 1;
    const leftRaw: u16 = possitionPoint.column - 1;
    const rightRaw: u16 = possitionPoint.column + 1;

    this.topRaw = topRaw;
    this.bottomRaw = bottomRaw;
    this.leftRaw = leftRaw;
    this.rightRaw = rightRaw;

    this.top = new WavePossitionPoint(topRaw, possitionPoint.column);
    this.bottom = new WavePossitionPoint(bottomRaw, possitionPoint.column);
    this.left = new WavePossitionPoint(possitionPoint.row, leftRaw);
    this.right = new WavePossitionPoint(possitionPoint.row, rightRaw);
  }
}
