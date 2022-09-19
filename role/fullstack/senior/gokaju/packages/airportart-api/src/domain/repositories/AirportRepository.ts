import { Airport } from "../entities/Airport";

export interface AirportRepository {
  findById(id: number): Promise<Airport>;
  save(airport: Airport): Promise<void>;
  updatePriority(airport: Airport): Promise<void>;
}
