import dotenv from "dotenv";
dotenv.config({
  path: ".env.development",
});

import "./infrastructure/http/app";
