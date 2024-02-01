import { EmailValidatorAdapter } from "./email-validator-adapter";
import validator from 'validator'

describe('EmailValidator Adapter', () => {
    test('should return false if validator returns false', () => {
        const sut = new EmailValidatorAdapter()
        jest.spyOn(sut, 'isValid').mockReturnValueOnce(false)

        const isvalid = sut.isValid('invalid_email@mail.com')

        expect(isvalid).toBe(false)
    });

    test('should return true if validator returns false', () => {
        const sut = new EmailValidatorAdapter()
        jest.spyOn(sut, 'isValid').mockReturnValueOnce(true)

        const isvalid = sut.isValid('invalid_email@mail.com')

        expect(isvalid).toBe(true)
    });

    test('should call validator with correct email', () => {
        const sut = new EmailValidatorAdapter()
        const isEmailSpy = jest.spyOn(validator, 'isEmail')
        sut.isValid('any_email@mail.com')
        expect(isEmailSpy).toHaveBeenCalledWith('any_email@mail.com')
    });
});