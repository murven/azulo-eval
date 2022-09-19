import { Pool } from "mysql2";
import { Operator } from "../../domain/entities/Operator";
import { OperatorRepository } from "../../domain/repositories/OperatorRepository";
import { OperatorModel } from "./databases/mysql/models/OperatorModel";

export class MySqlOperatorRepository implements OperatorRepository {
  private readonly db: Pool;

  constructor(db: Pool) {
    this.db = db;
  }

  async findById(id: number): Promise<Operator> {
    return new Promise((resolve, reject) => {
      this.db.query<OperatorModel[]>(
        "SELECT * FROM AirportOperator WHERE id = ?",
        [id],
        (err, res) => {
          if (err) reject(err);
          else {
            const operator = new Operator();
            operator.id = res[0].id;
            operator.name = res[0].name;
            resolve(operator);
          }
        }
      );
    });
  }
}
