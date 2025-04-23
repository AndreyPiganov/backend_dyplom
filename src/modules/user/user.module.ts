import { Module } from '@nestjs/common';
import { DatabaseModule } from '../database/database.module';
import { UserController } from './user.controller';
import { UserService } from './user.service';
import { JwtModule } from '@nestjs/jwt';
import configuration from '../../config/configuration';
import { JwtStrategy } from '../../strategies/jwt.strategy';

const { env } = configuration();

@Module({
    imports: [
        JwtModule.register({
            secret: env.secretJwt,
            signOptions: { expiresIn: '1d' }
        }),
        DatabaseModule
    ],
    controllers: [UserController],
    providers: [UserService, JwtStrategy]
})
export class UserModule {}
