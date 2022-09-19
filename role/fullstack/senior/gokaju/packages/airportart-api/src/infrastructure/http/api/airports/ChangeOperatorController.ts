import { Request, Response } from "express";
import { BaseController } from "../../../../shared/core/BaseController";
import { ChangeOperator } from "../../../../use-cases/airports/change-operator/ChangeOperator";
import { ChangeOperatorDTO } from "../../../../use-cases/airports/change-operator/ChangeOperatorDTO";
import { MySqlAirportRepository } from "../../../repositories/MySqlAirportRepository";
import { MySqlOperatorRepository } from "../../../repositories/MySqlOperatorRepository";
import { connection } from "../../../repositories/databases/mysql/connection";

class ChangeOperatorController extends BaseController {
  constructor(private useCase: ChangeOperator) {
    super();
  }

  public async handle(req: Request, res: Response): Promise<void> {
    try {
      const dto: ChangeOperatorDTO = req.body as ChangeOperatorDTO;
      await this.useCase.execute(dto);
      this.created(res);
    } catch (err) {
      this.fail(res, err);
    }
  }
}

// export the controller, will be replaced for a factory
const mysqlAirportRepository = new MySqlAirportRepository(connection);
const mysqlOperatorRepository = new MySqlOperatorRepository(connection);
export const changeOperatorController = new ChangeOperatorController(
  new ChangeOperator(mysqlOperatorRepository, mysqlAirportRepository)
);
