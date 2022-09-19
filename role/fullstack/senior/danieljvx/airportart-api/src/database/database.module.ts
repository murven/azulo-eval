import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Connection } from 'typeorm';
import { AirportModule } from '../airport/airport.module';
import { AirportEntity } from '../airport/entities/airport.entity';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3306,
      username: 'danieljvx',
      password: 'azulo',
      database: 'azulo_airport',
      entities: [AirportEntity],
      synchronize: true,
    }),
    AirportModule,
  ],
})
export class DatabaseModule {
  constructor(private readonly connection: Connection) {}
}
