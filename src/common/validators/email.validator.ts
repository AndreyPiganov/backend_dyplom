import { ValidatorConstraint, ValidatorConstraintInterface, ValidationArguments, isEmail } from 'class-validator';
import { I18nContext } from 'nestjs-i18n';
import { Injectable } from '@nestjs/common';

@ValidatorConstraint({ name: 'customEmail', async: false })
@Injectable()
export class CustomEmailValidator implements ValidatorConstraintInterface {
    validate(email: string): boolean {
        if (!email) return false;

        if (!/^[a-zA-Z]{2}/.test(email)) {
            return false;
        }

        if (!email.includes('@')) {
            return false;
        }

        const localPart = email.split('@')[0];
        if (localPart.length > 32) {
            return false;
        }

        const emailRegex = /^[a-zA-Z]{2}[a-zA-Z0-9!#$%&'*+=?^_`{|}~.-]{0,32}@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,10}$/;
        return emailRegex.test(email) && isEmail(email);
    }

    defaultMessage(args: ValidationArguments): string {
        const email = args.value;
        const lang = I18nContext.current()?.lang || 'en';
        const options = { lang, args };

        if (!email) return I18nContext.current().translate('validation.customEmail.empty', options);
        if (!/^[a-zA-Z]{2}/.test(email))
            return I18nContext.current().translate('validation.customEmail.invalidStart', options);
        if (!email.includes('@')) return I18nContext.current().translate('validation.customEmail.missingAt', options);
        if (email.split('@')[0].length > 32)
            return I18nContext.current().translate('validation.customEmail.localPartTooLong', options);
        return I18nContext.current().translate('validation.customEmail.invalidFormat', options);
    }
}
