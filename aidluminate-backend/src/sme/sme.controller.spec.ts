import { Test, TestingModule } from '@nestjs/testing';
import { SmeController } from './sme.controller';

describe('SmeController', () => {
  let controller: SmeController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [SmeController],
    }).compile();

    controller = module.get<SmeController>(SmeController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
