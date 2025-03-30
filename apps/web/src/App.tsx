import { interate } from "@repo/webassembly/debug";

export default function App() {
  function callbackInterate() {
    const result = interate();
    console.log(result.mapTiles);
  }

  return (
    <div className="p-4">
      <button className="btn" onClick={callbackInterate}>
        Interate
      </button>
    </div>
  );
}
