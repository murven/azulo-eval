import { Airport } from ".";

export class AirportMapper {
  static map(airport: any): Airport {
    return {
      id: airport.id,
      name: airport.name,
      code: airport.airportCode,
      state: airport.locationId?.provinceOrState,
      country: airport.locationId?.country,
      operator: airport.airportOperatorId?.name,
    };
  }
}
