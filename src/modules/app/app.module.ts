import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import configuration from '../../config/configuration';
import { WinstonModule } from 'nest-winston';
import { winstonConfig } from '../../config/winston.config';
import { AcceptLanguageResolver, HeaderResolver, I18nJsonLoader, I18nModule, QueryResolver } from 'nestjs-i18n';
import path from 'path';
import { DatabaseModule } from '../database/database.module';
import { QuestionModule } from '../question/question.module';
import { UserModule } from '../user/user.module';
import { TestModule } from '../test/test.module';
import { LoggingInterceptor } from '../../common/interceptors/logger.interceptor';
import { APP_INTERCEPTOR } from '@nestjs/core';

const { app, env } = configuration();

@Module({
    imports: [
        ConfigModule.forRoot({
            isGlobal: true,
            load: [configuration],
            envFilePath: '.env'
        }),
        WinstonModule.forRoot({
            transports: winstonConfig.transports,
            format: winstonConfig.format,
            level: winstonConfig.level
        }),
        I18nModule.forRoot({
            fallbackLanguage: app.default_lang, // Lang default
            loaderOptions: {
                path: path.join(__dirname, '../../i18n/'), // path to files locales
                watch: env.environment === 'dev'
            },
            loader: I18nJsonLoader,
            resolvers: [
                { use: QueryResolver, options: ['lang'] },
                AcceptLanguageResolver,
                new HeaderResolver(['accept-language', 'Accept-Language'])
            ]
        }),
        DatabaseModule,
        UserModule,
        QuestionModule,
        TestModule
    ],
    providers: [{ provide: APP_INTERCEPTOR, useClass: LoggingInterceptor }]
})
export class AppModule {}
