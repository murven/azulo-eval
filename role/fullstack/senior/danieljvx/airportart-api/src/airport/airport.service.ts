import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, Like } from 'typeorm';
import { AirportAllResponseDto } from './dto/airport-all-response.dto';
import { AirportEntity } from './entities/airport.entity';

@Injectable()
export class AirportService {
  constructor(
    @InjectRepository(AirportEntity)
    private airportRepository: Repository<AirportEntity>,
  ) {}

  private calculatePagination(page, perPage, total, search) {
    const queryParams: AirportAllResponseDto = {
      page: Math.ceil(page > 0 ? page : 1),
      perPage: Math.ceil(perPage > 0 ? perPage : 15),
      search,
      prevPage: 0,
      nextPage: 0,
      lastPage: 0,
      total: 0,
      airports: [],
    };
    const lastPage = Math.ceil(total / queryParams.perPage);
    queryParams['prevPage'] = Math.ceil(
      queryParams.page > 1 ? queryParams.page - 1 : queryParams.page,
    );
    queryParams['nextPage'] = Math.ceil(
      queryParams.page < lastPage ? queryParams.page + 1 : queryParams.page,
    );
    queryParams['lastPage'] = lastPage;
    queryParams['total'] = total;
    return queryParams;
  }

  async getAllAirport(
    page = 1,
    perPage = 15,
    search: string,
  ): Promise<AirportAllResponseDto> {
    const querySearch = { name: Like('%' + search + '%') };
    const [, airportTotal] = await this.airportRepository.findAndCount({
      where: search && search !== '' ? querySearch : {},
    });
    const queryParams = this.calculatePagination(
      page,
      perPage,
      airportTotal,
      search,
    );
    const airportResult = await this.airportRepository.find({
      where: search && search !== '' ? querySearch : {},
      order: { id: 'DESC' },
      take: perPage,
      skip: page - 1,
    });
    queryParams['airports'] = airportResult;
    return queryParams;
  }

  async changeOperator(
    id: number,
    airport: AirportEntity,
  ): Promise<AirportEntity> {
    const editAirport = await this.airportRepository.findOne({
      where: {
        id,
      },
    });
    if (!editAirport) {
      throw new NotFoundException('AirportEntity is not found');
    }
    editAirport.operatorId = airport.operatorId;
    await editAirport.save();
    return editAirport;
  }

  async changePriorityOrder(
    id: number,
    airport: AirportEntity,
  ): Promise<AirportEntity> {
    const editAirport = await this.airportRepository.findOne({
      where: {
        id,
      },
    });
    if (!editAirport) {
      throw new NotFoundException('AirportEntity is not found');
    }
    editAirport.priorityOrder = airport.priorityOrder;
    await editAirport.save();
    return editAirport;
  }
}
