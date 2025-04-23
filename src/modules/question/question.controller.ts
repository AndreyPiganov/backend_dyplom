import { Controller, Get, Post, Body, Patch, Param, Delete, ParseIntPipe, Query, UseGuards } from '@nestjs/common';
import { QuestionService } from './question.service';
import { CreateQuestionDto } from './types/dto/create.question.dto';
import UpdateQuestionDto from './types/dto/update.question.dto';
import QueryRandomQuestionDto from './types/dto/query.random.question.dto';
import { Roles } from 'src/common/decorators/roles.decorator';
import { Role } from '@prisma/client';
import { JwtAuthGuard } from '../../guards/jwt.guard';
import { RolesGuard } from '../../guards/roles.guard';
import { ApiTags, ApiBearerAuth, ApiOperation, ApiResponse, ApiParam, ApiBody, ApiQuery } from '@nestjs/swagger';

@ApiTags('Questions')
@ApiBearerAuth('access-token')
@Controller('questions')
@UseGuards(JwtAuthGuard, RolesGuard)
export class QuestionController {
    constructor(private readonly questionService: QuestionService) {}

    @Post()
    @Roles(Role.ADMIN)
    @ApiOperation({ summary: 'Создать новый вопрос' })
    @ApiBody({ type: CreateQuestionDto })
    @ApiResponse({ status: 201, description: 'Вопрос успешно создан' })
    createQuestion(@Body() dto: CreateQuestionDto) {
        return this.questionService.createQuestion(dto);
    }

    @Get()
    @Roles(Role.ADMIN)
    @ApiOperation({ summary: 'Получить список всех вопросов' })
    @ApiResponse({ status: 200, description: 'Список вопросов получен' })
    getAllQuestions() {
        return this.questionService.getAllQuestions();
    }

    @Get('/random')
    @Roles(Role.STUDENT, Role.ADMIN)
    @ApiOperation({ summary: 'Получить случайные вопросы' })
    @ApiQuery({ name: 'count', required: false, type: Number, description: 'Количество вопросов' })
    @ApiResponse({ status: 200, description: 'Случайные вопросы получены' })
    getRandomQuestions(@Query() query: QueryRandomQuestionDto) {
        return this.questionService.getRandomQuestions(query.count);
    }

    @Get(':id')
    @Roles(Role.STUDENT)
    @ApiOperation({ summary: 'Получить вопрос по ID' })
    @ApiParam({ name: 'id', type: Number, description: 'ID вопроса' })
    @ApiResponse({ status: 200, description: 'Вопрос найден' })
    getQuestionById(@Param('id', ParseIntPipe) id: number) {
        return this.questionService.getQuestionById(id);
    }

    @Patch(':id')
    @Roles(Role.ADMIN)
    @ApiOperation({ summary: 'Обновить вопрос по ID' })
    @ApiParam({ name: 'id', type: Number, description: 'ID вопроса' })
    @ApiBody({ type: UpdateQuestionDto })
    @ApiResponse({ status: 200, description: 'Вопрос обновлён' })
    updateQuestionById(@Param('id', ParseIntPipe) id: number, @Body() dto: UpdateQuestionDto) {
        return this.questionService.updateQuestionById(id, dto);
    }

    @Delete(':id')
    @Roles(Role.ADMIN)
    @ApiOperation({ summary: 'Удалить вопрос по ID' })
    @ApiParam({ name: 'id', type: Number, description: 'ID вопроса' })
    @ApiResponse({ status: 200, description: 'Вопрос удалён' })
    deleteQuestionById(@Param('id', ParseIntPipe) id: number) {
        return this.questionService.deleteQuestionById(id);
    }
}
