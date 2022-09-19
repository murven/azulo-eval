import { RowDataPacket } from "mysql2";

export interface OperatorModel extends RowDataPacket {
  id?: number;
  name: string;
}
