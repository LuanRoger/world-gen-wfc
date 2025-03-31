export function copyArray<T>(from: Array<T>, to: Array<T>): void {
  for (let i = 0; i < from.length; i++) {
    to[i] = from[i];
  }
}
