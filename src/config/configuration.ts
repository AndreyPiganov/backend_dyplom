import * as fs from 'fs';
import * as path from 'path';

export default () => {
    const appConfig = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../../app_config.json'), 'utf8'));

    return {
        app: { ...appConfig },
        env: {
            port: parseInt(process.env.PORT, 10) || 5555,
            environment: process.env.NODE_ENV || 'dev',
            databaseUrl: process.env.DATABASE_URL || '',
            secretJwt: process.env.JWT_SECRET || ''
        }
    };
};
