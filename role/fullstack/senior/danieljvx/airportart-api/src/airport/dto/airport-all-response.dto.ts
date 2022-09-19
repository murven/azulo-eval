import { IsNumber, IsObject, IsString } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger';
import { AirportEntity } from '../entities/airport.entity';

export class AirportAllResponseDto {
  @IsObject()
  @ApiProperty()
  airports: Array<AirportEntity>;

  @IsNumber()
  @ApiProperty()
  page: number;

  @IsNumber()
  @ApiProperty()
  perPage: number;

  @IsNumber()
  @ApiProperty()
  prevPage: number;

  @IsNumber()
  @ApiProperty()
  nextPage: number;

  @IsNumber()
  @ApiProperty()
  lastPage: number;

  @IsNumber()
  @ApiProperty()
  total: number;

  @IsString()
  @ApiProperty()
  search: string;
}
