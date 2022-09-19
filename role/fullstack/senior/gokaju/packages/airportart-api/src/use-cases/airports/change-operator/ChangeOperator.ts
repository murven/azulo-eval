import { AirportRepository } from "../../../domain/repositories/AirportRepository";
import { OperatorRepository } from "../../../domain/repositories/OperatorRepository";
import { UseCase } from "../../../shared/core/UseCase";
import { ChangeOperatorDTO } from "./ChangeOperatorDTO";

export class ChangeOperator implements UseCase<ChangeOperatorDTO> {
  constructor(
    private operatorRepository: OperatorRepository,
    private airportRepository: AirportRepository
  ) {}

  async execute(request: ChangeOperatorDTO): Promise<ChangeOperatorDTO> {
    const { airportId, newOperatorId } = request;

    // get the airport and check if it exists
    const airport = await this.airportRepository.findById(airportId);
    if (!airport) {
      throw new Error("Airport not found");
    }

    //  check if the operator exists
    const newOperator = await this.operatorRepository.findById(newOperatorId);
    if (!newOperator) {
      throw new Error("New Operator not found");
    }
    // new Operator is different from current Operator?
    if (airport.operator.id === newOperator.id) {
      throw new Error("New Operator is the same as current Operator");
    }
    airport.operator = newOperator;
    await this.airportRepository.save(airport);

    return request;
  }
}
