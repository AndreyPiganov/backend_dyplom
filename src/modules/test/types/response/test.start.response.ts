import { Question } from '@prisma/client';

export default class TestStartResponse {
    sessionId: number;
    questions: Question[];
}
