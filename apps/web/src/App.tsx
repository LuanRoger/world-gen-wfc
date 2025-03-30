import { getGrassTile } from "@repo/webassembly/debug";

export default function App() {
  const g = getGrassTile();
  return <div className="p-4">{g}</div>;
}
