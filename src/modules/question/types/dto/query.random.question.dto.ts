import { Type } from 'class-transformer';
import { IsInt, IsOptional } from 'class-validator';
import { ApiPropertyOptional } from '@nestjs/swagger';

export default class QueryRandomQuestionDto {
    @ApiPropertyOptional({
        description: 'Количество случайных вопросов для выборки',
        example: 5,
        type: Number
    })
    @IsInt({ message: 'validation.isInt' })
    @Type(() => Number)
    @IsOptional()
    count?: number;
}
