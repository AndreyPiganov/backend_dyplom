import { Inject, Injectable, LoggerService, NotFoundException } from '@nestjs/common';
import { WINSTON_MODULE_NEST_PROVIDER } from 'nest-winston';
import { DatabaseService } from '../database/database.service';
import SubmitAnswerDto from './types/dto/submit.answer.dto';
import { Question, TestAnswer, TestSession } from '@prisma/client';
import TestStartResponse from './types/response/test.start.response';
import { I18nContext, I18nService } from 'nestjs-i18n';

@Injectable()
export class TestService {
    constructor(
        @Inject(WINSTON_MODULE_NEST_PROVIDER) private readonly logger: LoggerService,
        private readonly prisma: DatabaseService,
        private readonly i18n: I18nService
    ) {}

    async startTest(userId: string, count: number = 10): Promise<TestStartResponse> {
        const questions = await this.prisma.$queryRaw<Question[]>`
  SELECT 
    q.*, 
    JSON_AGG(a.*) AS answers
  FROM "Question" q
  LEFT JOIN "Answer" a ON q.id = a."questionId"
  GROUP BY q.id
  ORDER BY RANDOM()
  LIMIT ${count};
`;

        this.logger.log(`Get random questions success with count ${count}`);

        const session = await this.prisma.testSession.create({
            data: {
                userId
            }
        });

        this.logger.log(`Session create success ${session.id}`);

        return { sessionId: session.id, questions };
    }

    async submitAnswer(sessionId: number, dto: SubmitAnswerDto): Promise<TestAnswer> {
        this.logger.log('Submitting answer ....');

        const question = await this.prisma.question.findUnique({
            where: { id: dto.questionId },
            include: { answers: true }
        });

        let isCorrect = false;

        if (dto.answerId) {
            const answer = question.answers.find((ans) => ans.id === dto.answerId);
            isCorrect = answer?.isCorrect ?? false;
        }

        // для TEXT можно потом сравнивать dto.userTextAnswer === шаблонный ответ

        return this.prisma.testAnswer.upsert({
            where: {
                testSessionId_questionId: {
                    testSessionId: sessionId,
                    questionId: dto.questionId
                }
            },
            update: {
                answerId: dto.answerId,
                userTextAnswer: dto.userTextAnswer,
                isCorrect
            },
            create: {
                testSessionId: sessionId,
                questionId: dto.questionId,
                answerId: dto.answerId,
                userTextAnswer: dto.userTextAnswer,
                isCorrect
            }
        });
    }

    async completeSession(sessionId: number): Promise<TestSession> {
        this.logger.log(`Completing session by id ${sessionId} .....`);

        const answers = await this.prisma.testAnswer.findMany({
            where: { testSessionId: sessionId }
        });

        const score = answers.filter((a) => a.isCorrect).length;

        this.logger.log('Session complete success');

        return this.prisma.testSession.update({
            where: { id: sessionId },
            data: {
                completedAt: new Date(),
                score
            }
        });
    }

    async getUserSessions(userId: string): Promise<TestSession[]> {
        this.logger.log(`Get user sessions by userId ${userId}`);

        const userSessions = await this.prisma.testSession.findMany({
            where: { userId },
            include: { testAnswers: true }
        });

        if (userSessions.length === 0) {
            this.logger.error(`Not found user sessions by userId ${userId}`);
            throw new NotFoundException(
                this.i18n.translate('validation.user.notFound', {
                    lang: I18nContext.current().lang,
                    args: {
                        value: userId
                    }
                })
            );
        }

        return userSessions;
    }

    async getSession(sessionId: number): Promise<TestSession> {
        this.logger.log(`Get sesssion by id ${sessionId}`);

        const userSession = await this.prisma.testSession.findUnique({
            where: { id: sessionId },
            include: { testAnswers: true }
        });

        if (!userSession) {
            this.logger.error(`Not found user session ${sessionId}`);
            throw new NotFoundException(
                this.i18n.translate('validation.user.notFound', {
                    lang: I18nContext.current().lang,
                    args: {
                        value: sessionId
                    }
                })
            );
        }

        return this.prisma.testSession.findUnique({
            where: { id: sessionId },
            include: { testAnswers: true }
        });
    }
}
