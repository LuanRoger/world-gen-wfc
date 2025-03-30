export class CollapseFrequency {
  tileId: u8;
  frequency: f32;

  constructor(tileId: u8, frequency: f32) {
    this.tileId = tileId;
    this.frequency = frequency;
  }
}
