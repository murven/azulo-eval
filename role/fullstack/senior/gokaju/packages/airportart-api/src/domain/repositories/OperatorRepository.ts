import { Operator } from "../entities/Operator";

export interface OperatorRepository {
  findById(id: number): Promise<Operator>;
}
