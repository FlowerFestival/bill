/*
 * @Author: szg
 * @Date: 2023-04-08 11:24:03
 * @LastEditors: szg
 * @LastEditTime: 2023-04-25 13:49:33
 * @FilePath: \table\src\bill\bill.interface.ts
 */

import { Bill } from './bill.entity';

export interface BillRO {
  billList?: Bill[];
  count?: number;
  errCode: number;
  message: string;
  pageNo?: number;
  pageSize?: number;
  expenditureSum?: number;
  incomeSum?: number;
}

export interface QueryParams {
  billMonth?: number;
  category?: string;
}
