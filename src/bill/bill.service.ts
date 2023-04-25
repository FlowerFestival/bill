/*
 * @Author: szg
 * @Date: 2023-04-04 16:21:37
 * @LastEditors: szg
 * @LastEditTime: 2023-04-25 15:33:45
 * @FilePath: \table\src\bill\bill.service.ts
 */
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Bill } from './bill.entity';
import { Repository } from 'typeorm';
import { BillRO, QueryParams } from './bill.interface';

@Injectable()
export class BillService {
  constructor(
    @InjectRepository(Bill)
    private readonly BillRepository: Repository<Bill>,
  ) {}

  async findAll(query): Promise<BillRO> {
    try {
      const { pageNo = 1, pageSize = 10 } = query;
      const queryParams: QueryParams = {};
      if (query.billMonth) {
        queryParams.billMonth = Number(query.billMonth);
      }
      if (query.category) {
        queryParams.category = query.category;
      }
      console.log('queryParams', queryParams);
      const [bills, num]: [Bill[], number] =
        await this.BillRepository.findAndCount({
          skip: (pageNo - 1) * pageSize,
          take: pageSize,
          where: queryParams,
        });
      const expenditureSum = this.BillRepository.createQueryBuilder('Bill')
        .select('SUM(Bill.amount)', 'sum')
        .where('type = :type', { type: 0 });
      if (queryParams.billMonth) {
        expenditureSum.andWhere('billMonth = :billMonth', {
          billMonth: queryParams.billMonth,
        });
      }
      const expenditure = await expenditureSum.getRawOne();
      const incomeSum = this.BillRepository.createQueryBuilder('Bill')
        .select('SUM(Bill.amount)', 'sum')
        .where('type = :type', { type: 1 });
      if (queryParams.billMonth) {
        incomeSum.andWhere('billMonth = :billMonth', {
          billMonth: queryParams.billMonth,
        });
      }
      const income = await incomeSum.getRawOne();
      console.log('sum', incomeSum);
      const obj = {
        billList: bills,
        count: num,
        pageNo,
        pageSize,
        expenditureSum: expenditure,
        incomeSum: income,
        errCode: 0,
        message: 'success',
      };
      return obj;
    } catch (error) {
      console.log('error', error);
      const obj = {
        errCode: 10000,
        message: error,
      };
      return obj;
    }
  }

  async getCategoryCount(query): Promise<BillRO> {
    try {
      const sql = this.BillRepository.createQueryBuilder('Bill')
        .select(['category'])
        .addSelect('SUM(bill.amount)', 'sum');
      if (query.billMonth) {
        sql.where('billMonth = :billMonth', { billMonth: query.billMonth });
      }
      sql.groupBy('category');

      const res = await sql.getRawMany();
      const obj = {
        billList: res,
        errCode: 0,
        message: 'success',
      };
      return obj;
    } catch (error) {
      console.log('error', error);
      const obj = {
        errCode: 10000,
        message: error,
      };
      return obj;
    }
  }

  async createBill(body): Promise<BillRO> {
    try {
      const res = await this.BillRepository.save(body);
      console.log('create res', res);
      const obj = {
        bill: res,
        errCode: 0,
        message: 'success',
      };
      return obj;
    } catch (error) {
      const obj = {
        errCode: 10000,
        message: '创建失败',
      };
      return obj;
    }
  }
}
