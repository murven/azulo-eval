import express from "express";
import cors from "cors";

import { v1Router } from "./api/v1";

const origin = {
  // origin: isProduction ? 'https://.com' : '*',
  origin: "*",
};

const app = express();

app.use(cors(origin));
app.use(express.json());

app.use("/api/v1", v1Router);

const port = process.env.PORT || 5001;

app.listen(port, () => {
  console.log(`[App]: Listening on port ${port}`);
});
