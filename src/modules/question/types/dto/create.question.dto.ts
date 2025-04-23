import { IsString, IsEnum, ValidateNested, ArrayMinSize, IsArray } from 'class-validator';
import { Type } from 'class-transformer';
import { QuestionType } from '@prisma/client';
import { CreateAnswerDto } from './create.answer.dto';
import { ApiProperty } from '@nestjs/swagger';

export class CreateQuestionDto {
    @ApiProperty({
        example: 'Какой столицей является город Париж?',
        description: 'Текст вопроса'
    })
    @IsString({ message: 'validation.isString' })
    questionText: string;

    @ApiProperty({
        enum: QuestionType,
        example: QuestionType.MULTIPLE_CHOICE,
        description: 'Тип вопроса (TEXT, MULTIPLE_CHOICE, TRUE_FALSE)'
    })
    @IsEnum(QuestionType, { message: 'validation.isEnum' })
    questionType: QuestionType;

    @ApiProperty({
        type: [CreateAnswerDto],
        description: 'Список возможных ответов',
        example: [
            { text: 'Париж', isCorrect: true },
            { text: 'Берлин', isCorrect: false },
            { text: 'Лондон', isCorrect: false }
        ]
    })
    @IsArray({ message: 'validation.isArray' })
    @ArrayMinSize(1, { message: 'validation.arrayMinSize' })
    @ValidateNested({ each: true })
    @Type(() => CreateAnswerDto)
    answers: CreateAnswerDto[];
}
