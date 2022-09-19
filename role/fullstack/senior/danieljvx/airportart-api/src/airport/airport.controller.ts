import { Body, Controller, Get, Param, Put, Res, Query, HttpStatus } from '@nestjs/common';
import { ApiTags, ApiResponse } from '@nestjs/swagger';
import { AirportEntity } from './entities/airport.entity';
import { AirportService } from './airport.service';
import { AirportAllResponseDto } from './dto/airport-all-response.dto';

@ApiTags('Airport')
@Controller('airport')
export class AirportController {
  constructor(private airportService: AirportService) {}

  @Get()
  @ApiResponse({ status: 200, type: AirportAllResponseDto })
  async getAirports(
    @Res() res,
    @Query() { page, perPage, search },
  ): Promise<AirportAllResponseDto> {
    const airports = await this.airportService.getAllAirport(page, perPage, search);
    return res.status(HttpStatus.OK).json(airports);
  }

  @Put('operator/:id')
  async changeOperator(
    @Body() airport: AirportEntity,
    @Param('id') id: number,
  ): Promise<AirportEntity> {
    const airportEdited = await this.airportService.changeOperator(id, airport);
    console.log('airportEdited', airportEdited);
    return airportEdited;
  }

  @Put('priority-order/:id')
  async changePriorityOrder(
    @Body() airport: AirportEntity,
    @Param('id') id: number,
  ): Promise<AirportEntity> {
    const airportEdited = await this.airportService.changePriorityOrder(
      id,
      airport,
    );
    console.log('airportEdited', airportEdited);
    return airportEdited;
  }
}
