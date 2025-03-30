export class WavePossition {
  entropy: u8[];

  constructor(entropy: u8[]) {
    this.entropy = entropy;
  }

  collapsed(): boolean {
    return this.entropy.length === 1;
  }

  conflict(): boolean {
    return this.entropy.length === 0;
  }
}
