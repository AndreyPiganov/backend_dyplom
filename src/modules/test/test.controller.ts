import { Body, Controller, Get, Param, ParseIntPipe, Post, Query, UseGuards } from '@nestjs/common';
import { Roles } from 'src/common/decorators/roles.decorator';
import { Role } from '@prisma/client';
import { JwtAuthGuard } from '../../guards/jwt.guard';
import { RolesGuard } from '../../guards/roles.guard';
import { TestService } from './test.service';
import { CurrentUser } from '../../common/decorators/current.user.decorator';
import SubmitAnswerDto from './types/dto/submit.answer.dto';
import QueryRandomQuestionDto from '../question/types/dto/query.random.question.dto';
import { ApiTags, ApiOperation, ApiResponse, ApiParam, ApiQuery, ApiBody, ApiBearerAuth } from '@nestjs/swagger';
import TestStartResponse from './types/response/test.start.response';

@ApiTags('Tests')
@ApiBearerAuth('access-token')
@Controller('tests')
@UseGuards(JwtAuthGuard, RolesGuard)
export class TestController {
    constructor(private readonly testService: TestService) {}

    @Get('/history')
    @Roles(Role.STUDENT, Role.ADMIN)
    @ApiOperation({ summary: 'Получить историю тестов текущего пользователя' })
    @ApiResponse({ status: 200, description: 'История тестов успешно получена' })
    getUserSessions(@CurrentUser('sub') userId: string) {
        return this.testService.getUserSessions(userId);
    }

    @Post('/answers/submit/:id')
    @Roles(Role.STUDENT, Role.ADMIN)
    @ApiOperation({ summary: 'Отправить ответ на вопрос теста' })
    @ApiParam({ name: 'id', type: Number, description: 'ID тестовой сессии' })
    @ApiBody({ type: SubmitAnswerDto })
    @ApiResponse({ status: 201, description: 'Ответ успешно сохранён' })
    submitAnswer(@Param('id', ParseIntPipe) id: number, @Body() submitAnswerDto: SubmitAnswerDto) {
        return this.testService.submitAnswer(id, submitAnswerDto);
    }

    @Post('/sessions/complete/:id')
    @Roles(Role.STUDENT, Role.ADMIN)
    @ApiOperation({ summary: 'Завершить тестовую сессию' })
    @ApiParam({ name: 'id', type: Number, description: 'ID тестовой сессии' })
    @ApiResponse({ status: 200, description: 'Тест завершён и оценён' })
    completeSession(@Param('id', ParseIntPipe) id: number) {
        return this.testService.completeSession(id);
    }

    @Post('/sessions/start')
    @Roles(Role.STUDENT, Role.ADMIN)
    @ApiOperation({ summary: 'Начать новую тестовую сессию' })
    @ApiQuery({ name: 'count', required: false, type: Number, description: 'Количество случайных вопросов' })
    @ApiResponse({ status: 201, description: 'Сессия создана, вопросы получены', type: TestStartResponse })
    startSession(@CurrentUser('sub') userId: string, @Query() query: QueryRandomQuestionDto) {
        return this.testService.startTest(userId, query.count);
    }

    @Get('/sessions/:id')
    @Roles(Role.STUDENT, Role.ADMIN)
    @ApiOperation({ summary: 'Получить информацию о конкретной сессии' })
    @ApiParam({ name: 'id', type: Number, description: 'ID тестовой сессии' })
    @ApiResponse({ status: 200, description: 'Информация о сессии получена' })
    getSession(@Param('id', ParseIntPipe) id: number) {
        return this.testService.getSession(id);
    }
}
