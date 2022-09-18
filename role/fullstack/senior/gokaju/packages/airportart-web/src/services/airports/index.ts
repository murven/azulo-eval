import { AirportMapper } from "./mapper";

export type Airport = {
  id: string;
  name: string;
  code: string;
  state: string;
  country: string;
  operator: string;
};

export interface Api {
  get: (path: string) => Promise<any>;
}

export class AirportService {
  constructor(private readonly api: Api) {}

  async getAirports(sortField: string = "priorityOrder"): Promise<Airport[]> {
    const response = await this.api.get(
      `/items/Airport?sort=${sortField}&fields=*,airportOperatorId.*,locationId.*&meta=*`
    );
    return response.data.map(AirportMapper.map);
  }
}
