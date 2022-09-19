export interface BulkChangePriorityDTO {
  airports: {
    airportId: number;
    newPriority: number;
  }[];
}
