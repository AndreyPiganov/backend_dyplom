import { ValidatorConstraint, ValidatorConstraintInterface, ValidationArguments } from 'class-validator';
import { I18nContext } from 'nestjs-i18n';
import { Injectable } from '@nestjs/common';

@ValidatorConstraint({ name: 'customPassword', async: false })
@Injectable()
export class CustomPasswordValidator implements ValidatorConstraintInterface {
    isLatin(str: string) {
        return /^[A-Za-z0-9!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?`~]+$/.test(str); // Разрешает только латиницу, цифры и спецсимволы
    }

    validate(password: string): boolean {
        if (!password) return false;

        if (!/(?=.*[A-Z])/.test(password)) {
            return false;
        }

        if (!this.isLatin(password)) {
            return false;
        }

        return true;
    }

    defaultMessage(args: ValidationArguments): string {
        const lang = I18nContext.current()?.lang || 'en';
        const options = { lang, args };

        if (!this.isLatin(args.value))
            return I18nContext.current().translate('validation.customPassword.noLatin', options);
        if (!/(?=.*[A-Z])/.test(args.value))
            return I18nContext.current().translate('validation.customPassword.noUpperCase', options);
        if (args.value.length < 8)
            return I18nContext.current().translate('validation.customPassword.tooShort', options);

        return I18nContext.current().translate('validation.customPassword.invalid', options);
    }
}
