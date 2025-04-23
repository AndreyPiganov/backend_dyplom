import { LoggerOptions, transports, format } from 'winston';
import { ConfigService } from '@nestjs/config';

const configService = new ConfigService();

export const winstonConfig: LoggerOptions = {
    level: configService.get<string>('NODE_ENV') === 'dev' ? 'debug' : 'info',
    format: format.combine(format.timestamp({ format: 'DD-MM-YYYY HH:mm:ss' }), format.json()),
    transports: [
        new transports.File({ filename: `${__dirname}/../../var/log/error.log`, level: 'error' }),
        new transports.File({ filename: `${__dirname}/../../var/log/info.log`, level: 'info' }),
        new transports.File({ filename: `${__dirname}/../../var/log/application.log` }),
        ...(configService.get('NODE_ENV') !== 'dev'
            ? []
            : [
                  new transports.Console({
                      format: format.combine(format.colorize(), format.cli())
                  })
              ])
    ]
};
