import { Type } from 'class-transformer';
import { IsArray, IsOptional, IsString, ValidateNested } from 'class-validator';
import { CreateAnswerDto } from './create.answer.dto';
import { ApiPropertyOptional } from '@nestjs/swagger';

export default class UpdateQuestionDto {
    @ApiPropertyOptional({
        description: 'Текст вопроса',
        example: 'Что такое NestJS?'
    })
    @IsString({ message: 'validation.isString' })
    @IsOptional()
    questionText?: string;

    @ApiPropertyOptional({
        description: 'Список ответов на вопрос',
        type: [CreateAnswerDto]
    })
    @IsArray({ message: 'validation.isArray' })
    @ValidateNested({ each: true })
    @Type(() => CreateAnswerDto)
    @IsOptional()
    answers?: CreateAnswerDto[];
}
