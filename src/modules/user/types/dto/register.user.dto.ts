import { IsNotEmpty, IsString, MaxLength, MinLength, Validate } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger';
import { CustomEmailValidator } from '../../../../common/validators/email.validator';
import { CustomPasswordValidator } from '../../../../common/validators/password.validator';
import { i18nValidationMessage } from 'nestjs-i18n';

export default class RegisterUserDto {
    @ApiProperty({
        description: 'Email пользователя',
        example: 'example@mail.com'
    })
    @IsNotEmpty({ message: 'validation.isNotEmpty' })
    @Validate(CustomEmailValidator)
    email: string;

    @ApiProperty({
        description: 'Имя пользователя (username)',
        example: 'john_doe'
    })
    @IsString({ message: 'validation.isString' })
    @IsNotEmpty({ message: 'validation.isNotEmpty' })
    username: string;

    @ApiProperty({
        description: 'Пароль пользователя (от 8 до 20 символов)',
        example: 'StrongPass123!',
        minLength: 8,
        maxLength: 20
    })
    @IsString({ message: 'validation.isString' })
    @IsNotEmpty({ message: 'validation.isNotEmpty' })
    @MinLength(8, { message: i18nValidationMessage('validation.maxLength') })
    @MaxLength(20, { message: i18nValidationMessage('validation.maxLength') })
    @Validate(CustomPasswordValidator)
    password: string;
}
