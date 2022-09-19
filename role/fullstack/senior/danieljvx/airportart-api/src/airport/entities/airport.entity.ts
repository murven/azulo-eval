import { BaseEntity, Column, Entity, PrimaryGeneratedColumn } from 'typeorm';
import { IsString, Max, MaxLength, Min, MinLength, IsNumber } from 'class-validator';

@Entity('airport')
export class AirportEntity extends BaseEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 200 })
  @MinLength(1)
  @MaxLength(200)
  @IsString()
  name: string;

  @Column({ name: 'operator_id' })
  @IsNumber()
  operatorId: number;

  @Column({ length: 30 })
  @MinLength(1)
  @MaxLength(30)
  @IsString()
  code: string;

  @Column({ name: 'location_id' })
  @IsNumber()
  locationId: number;

  @Column({ name: 'priority_order' })
  @IsNumber()
  priorityOrder: number;
}