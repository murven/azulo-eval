import { createPool } from "mysql2";

export const connection = createPool({
  host: "localhost",
  user: "root",
  password: "rootP@ssw0rd",
  database: "airport",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});
