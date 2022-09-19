import express from "express";
import { userRouter } from "./airports";
import swagger from "swagger-ui-express";
import swaggerDocument from "./docs/rest-swagger-v1.json";

const v1Router = express.Router();

v1Router.get("/", (_req, res) => {
  return res.json({ message: "We're up!" });
});

v1Router.use("/airports", userRouter);

// add  swagger documentation
v1Router.use("/docs", swagger.serve, swagger.setup(swaggerDocument));

export { v1Router };
