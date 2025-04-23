import { ExceptionFilter, Catch, ArgumentsHost, HttpException, Logger } from '@nestjs/common';
import { Request, Response } from 'express';

@Catch()
export class CustomExceptionsFilter implements ExceptionFilter {
    private readonly logger = new Logger(CustomExceptionsFilter.name);

    catch(exception: unknown, host: ArgumentsHost) {
        const ctx = host.switchToHttp();
        const response = ctx.getResponse<Response>();
        const request = ctx.getRequest<Request>();

        const status = exception instanceof HttpException ? exception.getStatus() : 500;

        const message = exception instanceof HttpException ? exception.getResponse() : exception;

        this.logger.error(`[${request.method}] ${request.url} → ${status} \n${JSON.stringify(message)}`);

        response.status(status).json({
            statusCode: status,
            timestamp: new Date().toISOString(),
            path: request.url,
            message: message['message'],
            error: message['error']
        });
    }
}
