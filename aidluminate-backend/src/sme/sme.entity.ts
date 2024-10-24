import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity()
export class SME {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  // Add other columns here
}
