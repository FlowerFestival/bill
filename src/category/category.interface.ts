/*
 * @Author: szg
 * @Date: 2023-04-08 11:24:03
 * @LastEditors: szg
 * @LastEditTime: 2023-04-24 14:49:07
 * @FilePath: \table\src\catagory\category.interface.ts
 */

import { Category } from './category.entity';

export interface CategoryRO {
  categoryList?: Category[];
  errCode: number;
  message: string;
}
