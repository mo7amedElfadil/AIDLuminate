import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity()
export class ServiceProvider {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  // Add other columns here
}
