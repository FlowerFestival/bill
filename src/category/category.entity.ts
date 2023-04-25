/*
 * @Author: szg
 * @Date: 2023-04-02 11:17:50
 * @LastEditors: szg
 * @LastEditTime: 2023-04-24 16:22:16
 * @FilePath: \table\src\category\category.entity.ts
 */
import { PrimaryColumn, Column, Entity } from 'typeorm';

@Entity()
export class Category {
  @PrimaryColumn({
    type: 'varchar',
    length: 11,
    comment: 'id',
  })
  id: string;

  @Column({
    type: 'int',
    comment: '账单类型',
  })
  type: number;

  @Column({
    type: 'varchar',
    length: 100,
    comment: '类型名称',
  })
  name: string;
}
