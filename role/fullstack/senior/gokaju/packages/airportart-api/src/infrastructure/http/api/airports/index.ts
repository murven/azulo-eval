import express from "express";
import { changeOperatorController } from "./ChangeOperatorController";
import { bulkChangeAirportPriorityController } from "./BulkChangeAirportPriorityController";
const userRouter = express.Router();

userRouter.post("/change-operator", (req, res) => {
  return changeOperatorController.handle(req, res);
});
userRouter.post("/bulk-change-priority", (req, res) => {
  return bulkChangeAirportPriorityController.handle(req, res);
});

export { userRouter };
