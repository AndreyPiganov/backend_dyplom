import { IsBoolean, IsNotEmpty, IsString } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger';

export class CreateAnswerDto {
    @ApiProperty({
        example: 'Париж',
        description: 'Текст ответа'
    })
    @IsString({ message: 'validation.isString' })
    @IsNotEmpty({ message: 'validation.isNotEmpty' })
    text: string;

    @ApiProperty({
        example: true,
        description: 'Правильный ли это ответ'
    })
    @IsBoolean({ message: 'validation.isBoolean' })
    isCorrect: boolean;
}
