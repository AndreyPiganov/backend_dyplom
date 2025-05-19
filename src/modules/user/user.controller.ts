import { Body, Controller, Delete, Get, Param, Patch, Post, UseGuards } from '@nestjs/common';
import { UserService } from './user.service';
import { Roles } from 'src/common/decorators/roles.decorator';
import { Role, User } from '@prisma/client';
import RegisterUserDto from './types/dto/register.user.dto';
import LoginUserDto from './types/dto/login.user.dto';
import UpdateUserDto from './types/dto/update.user.dto';
import { JwtAuthGuard } from '../../guards/jwt.guard';
import { RolesGuard } from '../../guards/roles.guard';
import { CurrentUser } from '../../common/decorators/current.user.decorator';
import { ApiTags, ApiBearerAuth, ApiOperation, ApiResponse, ApiParam, ApiBody } from '@nestjs/swagger';
import UserTokenResponse from './types/response/user.response';

@ApiTags('Users')
@Controller('users')
export class UserController {
    constructor(private readonly userService: UserService) {}

    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get()
    @Roles(Role.ADMIN)
    @ApiBearerAuth('access-token')
    @ApiOperation({ summary: 'Получить всех пользователей' })
    @ApiResponse({ status: 200, description: 'Список пользователей' })
    getAllUsers() {
        return this.userService.getAllUsers();
    }

    @Post('/register')
    @ApiOperation({ summary: 'Регистрация нового пользователя' })
    @ApiBody({ type: RegisterUserDto })
    @ApiResponse({ status: 201, description: 'Пользователь зарегистрирован', type: UserTokenResponse })
    registerUser(@Body() dto: RegisterUserDto) {
        return this.userService.registerUser(dto);
    }

    @Post('/login')
    @ApiOperation({ summary: 'Вход пользователя' })
    @ApiBody({ type: LoginUserDto })
    @ApiResponse({ status: 200, description: 'Успешный вход и получение токена', type: UserTokenResponse })
    loginUser(@Body() dto: LoginUserDto) {
        return this.userService.loginUser(dto);
    }

    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('/me')
    @Roles(Role.ADMIN, Role.STUDENT)
    @ApiBearerAuth('access-token')
    @ApiOperation({ summary: 'Получить данные текущего пользователя' })
    @ApiResponse({ status: 200, description: 'Профиль пользователя' })
    getMyProfile(@CurrentUser() user: User) {
        return user;
    }

    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get(':id')
    @Roles(Role.ADMIN, Role.STUDENT)
    @ApiBearerAuth('access-token')
    @ApiOperation({ summary: 'Получить пользователя по ID' })
    @ApiParam({ name: 'id', type: String, description: 'UUID пользователя' })
    @ApiResponse({ status: 200, description: 'Информация о пользователе' })
    getUserById(@Param('id') id: string) {
        return this.userService.getUserById(id);
    }

    @UseGuards(JwtAuthGuard, RolesGuard)
    @Patch(':id')
    @Roles(Role.ADMIN)
    @ApiBearerAuth('access-token')
    @ApiOperation({ summary: 'Обновить пользователя по ID' })
    @ApiParam({ name: 'id', type: String, description: 'UUID пользователя' })
    @ApiBody({ type: UpdateUserDto })
    @ApiResponse({ status: 200, description: 'Пользователь обновлён' })
    updateUserById(@Param('id') id: string, @Body() dto: UpdateUserDto) {
        return this.userService.updateUserById(id, dto);
    }

    @UseGuards(JwtAuthGuard, RolesGuard)
    @Delete(':id')
    @Roles(Role.ADMIN)
    @ApiBearerAuth('access-token')
    @ApiOperation({ summary: 'Удалить пользователя по ID' })
    @ApiParam({ name: 'id', type: String, description: 'UUID пользователя' })
    @ApiResponse({ status: 200, description: 'Пользователь удалён' })
    deleteUserById(@Param('id') id: string) {
        return this.userService.deleteUserById(id);
    }
}
