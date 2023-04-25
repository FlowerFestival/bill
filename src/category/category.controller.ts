import { Controller, Get } from '@nestjs/common';
import { CategoryService } from './category.service';
import { CategoryRO } from './category.interface';

@Controller('api/category')
export class CategoryController {
  constructor(private readonly categoryService: CategoryService) {}

  @Get()
  getAll(): Promise<CategoryRO> {
    return this.categoryService.findAll();
  }
}
