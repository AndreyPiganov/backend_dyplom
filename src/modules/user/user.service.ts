import { Inject, Injectable, LoggerService, NotFoundException, UnauthorizedException } from '@nestjs/common';
import { WINSTON_MODULE_NEST_PROVIDER } from 'nest-winston';
import { DatabaseService } from '../database/database.service';
import { I18nContext, I18nService } from 'nestjs-i18n';
import { Role, User } from '@prisma/client';
import UpdateUserDto from './types/dto/update.user.dto';
import { JwtService } from '@nestjs/jwt';
import RegisterUserDto from './types/dto/register.user.dto';
import * as bcrypt from 'bcryptjs';
import sha256 from 'sha256';
import UserTokenResponse from './types/response/user.response';
import LoginUserDto from './types/dto/login.user.dto';

@Injectable()
export class UserService {
    constructor(
        @Inject(WINSTON_MODULE_NEST_PROVIDER) private readonly logger: LoggerService,
        private readonly prisma: DatabaseService,
        private readonly i18n: I18nService,
        private jwt: JwtService
    ) {}

    async registerUser(dto: RegisterUserDto): Promise<UserTokenResponse> {
        const existing = await this.prisma.user.findUnique({ where: { email: dto.email } });
        if (existing) {
            throw new NotFoundException(
                this.i18n.translate('validation.user.alredyExist', {
                    lang: I18nContext.current().lang
                })
            );
        }

        const hash = await bcrypt.hash(dto.password, 10);
        const id = sha256(dto.email + '_' + dto.username);
        const user = await this.prisma.user.create({
            data: {
                id,
                email: dto.email,
                username: dto.username,
                password: hash
            }
        });

        return this._generateTokens(user.id, user.email, Role.STUDENT);
    }

    async loginUser(dto: LoginUserDto): Promise<UserTokenResponse> {
        const user = await this.prisma.user.findUnique({ where: { email: dto.email } });
        if (!user)
            throw new UnauthorizedException(
                this.i18n.translate('validation.user.notFoundConfidence', {
                    lang: I18nContext.current().lang
                })
            );

        const isValid = await bcrypt.compare(dto.password, user.password);
        if (!isValid)
            throw new UnauthorizedException(
                this.i18n.translate('validation.user.notFoundConfidence', {
                    lang: I18nContext.current().lang
                })
            );

        return this._generateTokens(user.id, user.email, user.role);
    }

    async getAllUsers(): Promise<User[]> {
        try {
            return this.prisma.user.findMany();
        } catch (error) {
            this.logger.error('Error get all users');
            throw error;
        }
    }

    async getUserById(id: string): Promise<User> {
        try {
            const user = await this.prisma.user.findFirst({ where: { id } });
            if (!user) {
                this.logger.error(`Not found user by id ${id}`);
                throw new NotFoundException(
                    this.i18n.translate('validation.user.notFound', {
                        lang: I18nContext.current().lang,
                        args: {
                            value: id
                        }
                    })
                );
            }

            return user;
        } catch (error) {
            this.logger.error(`Error get user by id ${id}`);
            throw error;
        }
    }

    async updateUserById(id: string, dto: UpdateUserDto): Promise<User> {
        try {
            const user = await this.getUserById(id);

            return this.prisma.user.update({
                where: { id: user.id },
                data: dto
            });
        } catch (error) {
            this.logger.error(`Error update user by id ${id}`);
            throw error;
        }
    }

    async deleteUserById(id: string): Promise<User> {
        try {
            const user = await this.getUserById(id);

            return this.prisma.user.delete({
                where: { id: user.id }
            });
        } catch (error) {
            this.logger.error(`Error delete user by id ${id}`);
            throw error;
        }
    }

    private _generateTokens(id: string, email: string, role: Role): UserTokenResponse {
        const payload = { sub: id, email, role };

        return {
            accessToken: this.jwt.sign(payload, { expiresIn: '15m' }),
            refreshToken: this.jwt.sign(payload, { expiresIn: '7d' }) // можно сделать отдельный секрет
        };
    }
}
