import express from "express";
import { userRouter } from "./airports";

const v1Router = express.Router();

v1Router.get("/", (_req, res) => {
  return res.json({ message: "We're up!" });
});

v1Router.use("/airports", userRouter);

export { v1Router };
