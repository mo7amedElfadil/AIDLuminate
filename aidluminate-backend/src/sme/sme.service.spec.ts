import { Test, TestingModule } from '@nestjs/testing';
import { SmeService } from './sme.service';

describe('SmeService', () => {
  let service: SmeService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [SmeService],
    }).compile();

    service = module.get<SmeService>(SmeService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
