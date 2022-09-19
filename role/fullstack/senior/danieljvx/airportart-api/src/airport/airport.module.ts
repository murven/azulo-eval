import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm/dist/typeorm.module';
import { AirportController } from './airport.controller';
import { AirportService } from './airport.service';
import { AirportEntity } from './entities/airport.entity';

@Module({
  imports: [TypeOrmModule.forFeature([AirportEntity])],
  controllers: [AirportController],
  providers: [AirportService],
})
export class AirportModule {}
