export default class AirportService {
  constructor(private readonly api: Api) {}

  async getAirports(): Promise<Airport[]> {
    const response = await this.api.get("/airports");
    return response.data;
  }
}
type Airport = {
  id: string;
  name: string;
  state: string;
  country: string;
  operator: string;
};

export interface Api {
  get: (path: string) => Promise<any>;
}
