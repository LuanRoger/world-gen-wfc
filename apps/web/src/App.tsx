import { add } from "@repo/webassembly/debug";
import { useState } from "react";
import { BinaryOperationSchema, binaryOperationSchema } from "./utils/schemas";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import reactLogo from "./assets/react.svg";
import wasmLogo from "./assets/wasm.svg";
import assemblyScriptLogo from "./assets/assembly-script.svg";

export default function App() {
  const [result, setReslt] = useState(0);
  const { register, handleSubmit } = useForm({
    resolver: zodResolver(binaryOperationSchema),
    defaultValues: {
      num1: 0,
      num2: 0,
    },
  });

  function handleClick(data: BinaryOperationSchema) {
    const { num1, num2 } = data;

    const newResult = add(num1, num2);
    setReslt(newResult);
  }

  return (
    <div className="flex h-screen flex-col items-center justify-center gap-2">
      <div className="flex items-center gap-4">
        <img src={reactLogo} alt="React Logo" className="w-16" />
        <img src={wasmLogo} alt="WebAssembly Logo" className="w-16" />
        <img
          src={assemblyScriptLogo}
          alt="AssemblyScript Logo"
          className="w-16"
        />
      </div>
      <h1 className="text-lg font-bold">
        React + WebAssembly (AssemblyScript)
      </h1>
      <form
        onSubmit={handleSubmit(handleClick)}
        className="flex flex-col gap-4"
      >
        <label className="input">
          <span className="label">Number 1</span>
          <input type="number" {...register("num1", { required: true })} />
        </label>
        <label className="input">
          <span className="label">Number 2</span>
          <input type="number" {...register("num2", { required: true })} />
        </label>
        <button type="submit" className="btn">
          Add
        </button>
      </form>
      <p className="mt-4 text-lg font-bold">Result: {result}</p>
    </div>
  );
}
