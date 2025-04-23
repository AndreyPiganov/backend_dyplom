import { IsNotEmpty, IsString, Validate } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger';
import { CustomEmailValidator } from 'src/common/validators/email.validator';
import { CustomPasswordValidator } from 'src/common/validators/password.validator';

export default class LoginUserDto {
    @ApiProperty({
        description: 'Email пользователя',
        example: 'user@example.com'
    })
    @IsNotEmpty({ message: 'validation.isNotEmpty' })
    @Validate(CustomEmailValidator)
    email: string;

    @ApiProperty({
        description: 'Пароль пользователя',
        example: 'StrongPassword123!'
    })
    @IsString({ message: 'validation.isString' })
    @IsNotEmpty({ message: 'validation.isNotEmpty' })
    @Validate(CustomPasswordValidator)
    password: string;
}
