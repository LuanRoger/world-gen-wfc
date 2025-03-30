import { z } from "zod";

export const binaryOperationSchema = z.object({
  num1: z.coerce.number(),
  num2: z.coerce.number(),
});

export type BinaryOperationSchema = z.infer<typeof binaryOperationSchema>;
