import { WavePossition } from "./wave-possition";
import { WavePossitionPoint } from "./wave-possition-point";

export class Wave {
  width: u16;
  height: u16;
  wavePossition: WavePossition[][];

  constructor(width: u16, height: u16, wavePossition: WavePossition[][]) {
    this.width = width;
    this.height = height;
    this.wavePossition = wavePossition;
  }

  isAllCollapsed(): boolean {
    for (let x: u16 = 0; x < this.width; x++) {
      for (let y: u16 = 0; y < this.height; y++) {
        if (!this.wavePossition[x][y].collapsed()) {
          return false;
        }
      }
    }

    return true;
  }

  updateEntropyAt(possition: WavePossitionPoint, entropy: u8[]): void {
    this.wavePossition[possition.row][possition.column].entropy = entropy;
  }
}
