import { CollapseFrequency } from "../wfc/collapse-frequency";

export class Random {
  private seed: i64;

  constructor(seed: i64 = 0) {
    this.seed = seed;
    NativeMath.seedRandom(this.seed);
  }

  pickTileIdByFrequency(collapseFrequencies: CollapseFrequency[]): u8 {
    let random: f64 = NativeMath.random();

    for (let i = 0; i < collapseFrequencies.length; i++) {
      const frequency = collapseFrequencies[i];

      if (random < frequency.frequency) {
        return frequency.tileId;
      }

      random -= frequency.frequency;
    }
    return collapseFrequencies[0].tileId;
  }

  generateRandomIndex(length: i32): i32 {
    const min = 0;
    const max = length;

    const random: f64 = NativeMath.random();
    const randomIndex: f64 = random * (max - min);

    return i32(NativeMath.floor(randomIndex));
  }
}
