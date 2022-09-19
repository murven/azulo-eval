import { createPool } from "mysql2";

import { constants } from "../../../../config";

export const connection = createPool({
  host: constants.DB_HOST,
  user: constants.DB_USER,
  password: constants.DB_PASSWORD,
  database: constants.DB_NAME,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});
