import { IsInt, IsNotEmpty, IsOptional, IsString } from 'class-validator';
import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';

export default class SubmitAnswerDto {
    @ApiProperty({
        description: 'ID выбранного ответа',
        example: 42
    })
    @IsInt()
    @IsNotEmpty()
    answerId: number;

    @ApiProperty({
        description: 'ID вопроса, на который даётся ответ',
        example: 7
    })
    @IsInt()
    @IsNotEmpty()
    questionId: number;

    @ApiPropertyOptional({
        description: 'Ответ пользователя в текстовой форме (если вопрос текстовый)',
        example: 'NestJS — это фреймворк для создания серверных приложений на Node.js'
    })
    @IsString()
    @IsNotEmpty()
    @IsOptional()
    userTextAnswer?: string;
}
