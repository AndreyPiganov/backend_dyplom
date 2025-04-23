import { IsNotEmpty, IsOptional, IsString, Validate } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger';
import { CustomEmailValidator } from '../../../../common/validators/email.validator';

export default class UpdateUserDto {
    @ApiProperty({
        description: 'Email пользователя (опционально)',
        example: 'newemail@mail.com',
        required: false
    })
    @IsNotEmpty({ message: 'validation.isNotEmpty' })
    @Validate(CustomEmailValidator)
    @IsOptional()
    email: string;

    @ApiProperty({
        description: 'Имя пользователя (опционально)',
        example: 'new_username',
        required: false
    })
    @IsString({ message: 'validation.isString' })
    @IsNotEmpty({ message: 'validation.isNotEmpty' })
    @IsOptional()
    username: string;
}
