import { CanActivate, ExecutionContext, Injectable, ForbiddenException } from '@nestjs/common';

@Injectable()
export class IdMatchGuard implements CanActivate {
    constructor() {}

    canActivate(context: ExecutionContext): boolean {
        const request = context.switchToHttp().getRequest();

        const user = request.user; // Данные из токена, например, { id: '123', roles: ['USER'] }
        const paramId = request.params.id; // id из параметров URL

        // Если у пользователя есть роль ADMIN, пропускаем без проверки
        if (user.roles && user.roles.includes('ADMIN')) {
            return true;
        }

        // Если id из параметра не совпадает с id из токена — ошибка 403
        if (user.sub !== paramId) {
            throw new ForbiddenException('Access denied');
        }

        return true;
    }
}
