import { Request, Response } from "express";
import { BaseController } from "../../../../shared/core/BaseController";
import { ChangeOperator } from "../../../../use-cases/airports/change-operator/ChangeOperator";
import { ChangeOperatorDTO } from "../../../../use-cases/airports/change-operator/ChangeOperatorDTO";
import { MySqlAirportRepository } from "../../../repositories/MySqlAirportRepository";
import { MySqlOperatorRepository } from "../../../repositories/MySqlOperatorRepository";
import { connection } from "../../../repositories/databases/mysql/connection";
import { BulkChangePriority } from "../../../../use-cases/airports/bulk-change-priority/BulkChangePriority";
import { BulkChangePriorityDTO } from "../../../../use-cases/airports/bulk-change-priority/BulkChangePriorityDTO";

class BulkChangeAirportPriorityController extends BaseController {
  constructor(private useCase: BulkChangePriority) {
    super();
  }

  public async handle(req: Request, res: Response): Promise<void> {
    try {
      const dto: BulkChangePriorityDTO = req.body as BulkChangePriorityDTO;
      await this.useCase.execute(dto);
      this.created(res);
    } catch (err) {
      this.fail(res, err);
    }
  }
}

// export the controller, will be replaced for a factory
const mysqlAirportRepository = new MySqlAirportRepository(connection);
export const bulkChangeAirportPriorityController =
  new BulkChangeAirportPriorityController(
    new BulkChangePriority(mysqlAirportRepository)
  );
