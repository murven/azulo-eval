import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getApiMessages(): string {
    return 'Api for Azulo Eval go to /v1/airport';
  }
}
