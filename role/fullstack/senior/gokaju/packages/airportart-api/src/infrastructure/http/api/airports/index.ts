import express from "express";
import { changeOperatorController } from "./ChangeOperatorController";
const userRouter = express.Router();

userRouter.post("/change-operator", (req, res) => {
  return changeOperatorController.handle(req, res);
});

export { userRouter };
