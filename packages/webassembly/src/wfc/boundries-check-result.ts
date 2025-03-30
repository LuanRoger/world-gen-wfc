export class BoundresCheckResult {
  private top: boolean;
  private right: boolean;
  private bottom: boolean;
  private left: boolean;

  get Top(): boolean {
    return this.top;
  }
  get Right(): boolean {
    return this.right;
  }
  get Bottom(): boolean {
    return this.bottom;
  }
  get Left(): boolean {
    return this.left;
  }

  itHasAnyOutBounds(): boolean {
    return this.top || this.right || this.bottom || this.left;
  }

  constructor(top: boolean, right: boolean, bottom: boolean, left: boolean) {
    this.top = top;
    this.right = right;
    this.bottom = bottom;
    this.left = left;
  }
}
