import express from "express";
import cors from "cors";
import { constants } from "../../config";

import { v1Router } from "./api/v1";

const origin = {
  // origin: isProduction ? 'https://.com' : '*',
  origin: "*",
};

const app = express();

app.use(cors(origin));
app.use(express.json());

app.use("/api/v1", v1Router);

app.listen(constants.PORT, () => {
  console.log(`[App]: Listening on port ${constants.PORT}`);
});
