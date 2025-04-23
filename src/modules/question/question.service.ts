import { BadRequestException, Inject, Injectable, LoggerService, NotFoundException } from '@nestjs/common';
import { Prisma, Question } from '@prisma/client';
import { WINSTON_MODULE_NEST_PROVIDER } from 'nest-winston';
import { DatabaseService } from '../database/database.service';
import { CreateQuestionDto } from './types/dto/create.question.dto';
import { I18nContext, I18nService } from 'nestjs-i18n';
import UpdateQuestionDto from './types/dto/update.question.dto';

@Injectable()
export class QuestionService {
    constructor(
        @Inject(WINSTON_MODULE_NEST_PROVIDER) private readonly logger: LoggerService,
        private readonly prisma: DatabaseService,
        private readonly i18n: I18nService
    ) {}
    async createQuestion(dto: CreateQuestionDto): Promise<Question> {
        try {
            return await this.prisma.$transaction(async (tr) => {
                const question = await tr.question.findFirst({
                    where: { questionText: dto.questionText, questionType: dto.questionType }
                });
                if (question) {
                    this.logger.warn(`Question with text ${dto.questionText} already created`);
                    throw new BadRequestException(
                        this.i18n.translate('validation.question.alredyCreated', {
                            lang: I18nContext.current().lang,
                            args: {
                                value: dto.questionText
                            }
                        })
                    );
                }

                return tr.question.create({
                    data: {
                        questionText: dto.questionText,
                        questionType: dto.questionType,
                        answers: {
                            create: dto.answers
                        }
                    },
                    include: {
                        answers: true
                    }
                });
            });
        } catch (error) {
            this.logger.error('Error create question');
            throw error;
        }
    }

    async getAllQuestions(): Promise<Question[]> {
        try {
            return this.prisma.question.findMany({
                include: { answers: true }
            });
        } catch (error) {
            this.logger.error('Error get all questions');
            throw error;
        }
    }

    async getRandomQuestions(count: number = 10): Promise<Question[]> {
        try {
            const randomQuestions = await this.prisma.$queryRaw<Question[]>`
  SELECT 
    q.*, 
    JSON_AGG(a.*) AS answers
  FROM "Question" q
  LEFT JOIN "Answer" a ON q.id = a."questionId"
  GROUP BY q.id
  ORDER BY RANDOM()
  LIMIT ${count};
`;
            return randomQuestions;
        } catch (error) {
            this.logger.error('Error get random questions');
            throw error;
        }
    }

    async getQuestionById(id: number): Promise<Question> {
        try {
            const question = await this.prisma.question.findUnique({
                where: { id },
                include: { answers: true }
            });

            if (!question) {
                this.logger.error(`Not found question by id ${id}`);
                throw new NotFoundException(
                    this.i18n.translate('validation.question.notFound', {
                        lang: I18nContext.current().lang,
                        args: {
                            value: id
                        }
                    })
                );
            }

            return question;
        } catch (error) {
            this.logger.error(`Error get question by id ${id}`);
            throw error;
        }
    }

    async updateQuestionById(id: number, dto: UpdateQuestionDto): Promise<Question> {
        try {
            const question = await this.getQuestionById(id);

            const data: Prisma.QuestionUpdateInput = {
                questionText: dto.questionText
            };

            if (dto.answers) {
                data.answers = {
                    deleteMany: {},
                    create: dto.answers
                };
            }

            return this.prisma.question.update({
                where: { id: question.id },
                data,
                include: { answers: true }
            });
        } catch (error) {
            this.logger.error(`Error update question by id ${id}`);
            throw error;
        }
    }

    async deleteQuestionById(id: number): Promise<Question> {
        try {
            return this.prisma.question.delete({
                where: { id }
            });
        } catch (error) {
            this.logger.error(`Error delete question by id ${id}`);
            throw error;
        }
    }
}
