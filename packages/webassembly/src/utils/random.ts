import { CollapseFrequency } from "../wfc/collapse-frequency";

export class Random {
  private seed: i64 | null;

  constructor(seed: i64 | null = null) {
    this.seed = seed;
    if (this.seed != null) NativeMath.seedRandom(this.seed);
  }

  pickTileIdByFrequency(collapseFrequencies: CollapseFrequency[]): u8 {
    let random: f32 = NativeMath.random();

    for (let i = 0; i < collapseFrequencies.length; i++) {
      const frequency = collapseFrequencies[i];

      if (random < frequency.frequency) {
        return frequency.tileId;
      }

      random -= frequency.frequency;
    }
    return collapseFrequencies[0].tileId;
  }

  generateRandomIndex(length: u16): u16 {
    const min = 0;
    const max = length;

    const random: f32 = NativeMath.random();
    const randomIndex: f32 = random * (max - min);

    return NativeMath.floor(randomIndex);
  }
}
