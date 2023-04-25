import { Controller, Get, Post, Query, Body } from '@nestjs/common';
// import { Bill } from './bill.entity';
import { BillService } from './bill.service';
import { BillRO } from './bill.interface';

@Controller('api/bill')
export class BillController {
  constructor(private readonly billService: BillService) {}

  @Get()
  getAll(@Query() query): Promise<BillRO> {
    console.log('query', query);
    return this.billService.findAll(query);
  }

  @Post()
  createBill(@Body() body): Promise<BillRO> {
    console.log('body', body);
    return this.billService.createBill(body);
  }

  @Get('/count')
  getBillCount(@Query() query): Promise<BillRO> {
    return this.billService.getCategoryCount(query);
  }
}
