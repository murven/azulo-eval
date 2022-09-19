import { Pool } from "mysql2";
import { Airport } from "../../domain/entities/Airport";
import { Operator } from "../../domain/entities/Operator";
import { AirportRepository } from "../../domain/repositories/AirportRepository";
import { AirportModel } from "./databases/mysql/models/AirportModel";

export class MySqlAirportRepository implements AirportRepository {
  constructor(private db: Pool) {}

  async findById(id: number): Promise<Airport> {
    return new Promise((resolve, reject) => {
      this.db.query<AirportModel[]>(
        "SELECT id,name,airportOperatorId FROM Airport WHERE id = ?",
        [id],
        (err, res) => {
          if (err) reject(err);
          else {
            const airport = new Airport();
            airport.id = res[0].id;
            airport.name = res[0].name;
            airport.operator = new Operator();
            airport.operator.id = res[0].airportOperatorId;
            resolve(airport);
          }
        }
      );
    });
  }

  async save(airport: Airport): Promise<void> {
    this.db.query("UPDATE Airport SET airportOperatorId = ? WHERE id = ?", [
      airport.operator.id,
      airport.id,
    ]);
  }
}
