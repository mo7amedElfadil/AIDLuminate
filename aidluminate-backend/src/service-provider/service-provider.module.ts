import { Module } from '@nestjs/common';
import { ServiceProviderService } from './service-provider.service';
import { ServiceProviderController } from './service-provider.controller';

@Module({
  providers: [ServiceProviderService],
  controllers: [ServiceProviderController],
})
export class ServiceProviderModule {}
