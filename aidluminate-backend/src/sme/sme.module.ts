import { Module } from '@nestjs/common';
import { SmeService } from './sme.service';
import { SmeController } from './sme.controller';

@Module({
  providers: [SmeService],
  controllers: [SmeController],
})
export class SmeModule {}
