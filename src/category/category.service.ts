/*
 * @Author: szg
 * @Date: 2023-04-04 16:21:37
 * @LastEditors: szg
 * @LastEditTime: 2023-04-24 14:49:57
 * @FilePath: \table\src\catagory\category.service.ts
 */
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Category } from './category.entity';
import { Repository } from 'typeorm';
import { CategoryRO } from './category.interface';

@Injectable()
export class CategoryService {
  constructor(
    @InjectRepository(Category)
    private readonly categoryRepository: Repository<Category>,
  ) {}

  async findAll(): Promise<CategoryRO> {
    try {
      const catagories = await this.categoryRepository.find();
      console.log('catagories', catagories);
      const obj = {
        categoryList: catagories,
        errCode: 0,
        message: 'success',
      };
      return obj;
    } catch (error) {
      const obj = {
        errCode: 10000,
        message: error,
      };
      return obj;
    }
  }
}
