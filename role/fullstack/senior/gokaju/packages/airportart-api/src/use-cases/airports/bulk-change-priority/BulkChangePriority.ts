import { AirportRepository } from "../../../domain/repositories/AirportRepository";
import { UseCase } from "../../../shared/core/UseCase";
import { BulkChangePriorityDTO } from "./BulkChangePriorityDTO";

export class BulkChangePriority implements UseCase<BulkChangePriorityDTO> {
  constructor(private airportRepository: AirportRepository) {}

  async execute(
    request: BulkChangePriorityDTO
  ): Promise<BulkChangePriorityDTO> {
    const { airports } = request;
    const errors = [];
    for (const airport of airports) {
      const airportEntity = await this.airportRepository.findById(
        airport.airportId
      );
      if (!airportEntity) {
        errors.push(`Airport ${airport.airportId} not found`);
        continue;
      }

      airportEntity.priority = airport.newPriority;
      await this.airportRepository.updatePriority(airportEntity);
    }

    if (errors.length > 0) {
      throw new Error(errors.join(","));
    }

    return request;
  }
}
