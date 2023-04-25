/*
 * @Author: szg
 * @Date: 2023-04-02 11:17:50
 * @LastEditors: szg
 * @LastEditTime: 2023-04-24 16:53:33
 * @FilePath: \table\src\bill\bill.entity.ts
 */
import {
  PrimaryGeneratedColumn,
  Column,
  Entity,
  CreateDateColumn,
  UpdateDateColumn,
} from 'typeorm';

import * as dayjs from 'dayjs';

const dateTransformer = {
  from: (value: string): string => {
    return dayjs(Number(value)).format('YYYY-MM-DD HH:mm:ss');
  },
  to: (value) => {
    return value;
  },
};

@Entity()
export class Bill {
  @PrimaryGeneratedColumn({
    type: 'int',
    comment: 'id',
  })
  id: number;

  @Column({
    type: 'int',
    comment: '账单类型',
  })
  type: number;

  @Column({
    type: 'varchar',
    length: 13,
    comment: '账单时间',
    transformer: dateTransformer,
  })
  time: string;

  @Column({
    type: 'varchar',
    length: 11,
    comment: '账单分类',
  })
  category: string;

  @Column({
    type: 'double',
    comment: '账单金额',
  })
  amount: number;

  @Column({
    type: 'varchar',
    length: 2,
    comment: '月份',
  })
  billMonth: number;

  @CreateDateColumn({
    type: 'timestamp',
    name: 'created_at',
    comment: '创建时间',
  })
  createdAt: Date;

  @UpdateDateColumn({
    type: 'timestamp',
    name: 'updated_at',
    comment: '更新时间',
  })
  updatedAt: Date;
}
