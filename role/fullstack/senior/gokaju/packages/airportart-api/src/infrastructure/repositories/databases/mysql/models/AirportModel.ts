import { RowDataPacket } from "mysql2";

export interface AirportModel extends RowDataPacket {
  id?: number;
  name: string;
  operatorId: number;
}
