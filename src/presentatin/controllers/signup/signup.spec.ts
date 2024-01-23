import { MissingParamError } from "../../errors";
import { SignUpController } from "./signup";

describe('SignUp Controller', () => {
    test('Should return 400 if no name is provided', async () => {
        // Arrange
        const httpRequest = {
            body: {
                email: 'any_email@mail.com',
                password: 'any_password',
                passwordConfirmation: 'any_password'
            }
        }
        const signUpController = new SignUpController()

        // Act
        const httpResponse = await signUpController.handle(httpRequest)

        //Assert
        expect(httpResponse.statusCode).toBe(400)
        expect(httpResponse.body).toEqual(new MissingParamError('name'))
    });

    test('Should return 400 if no email is provided', async () => {
        // Arrange
        const httpRequest = {
            body: {
                name: 'any_name',
                password: 'any_password',
                passwordConfirmation: 'any_password'
            }
        }
        const signUpController = new SignUpController()

        // Act
        const httpResponse = await signUpController.handle(httpRequest)

        //Assert
        expect(httpResponse.statusCode).toBe(400)
        expect(httpResponse.body).toEqual(new MissingParamError('email'))
    });

    test('Should return 400 if no password is provided', async () => {
        // Arrange
        const httpRequest = {
            body: {
                name: 'any_name',
                email: 'any_email@mail.com',
                passwordConfirmation: 'any_password'
            }
        }
        const signUpController = new SignUpController()

        // Act
        const httpResponse = await signUpController.handle(httpRequest)

        //Assert
        expect(httpResponse.statusCode).toBe(400)
        expect(httpResponse.body).toEqual(new MissingParamError('password'))
    });

    test('Should return 400 if no passwordConfirmation is provided', async () => {
        // Arrange
        const httpRequest = {
            body: {
                name: 'any_name',
                email: 'any_email@mail.com',
                password: 'any_password'
            }
        }
        const signUpController = new SignUpController()

        // Act
        const httpResponse = await signUpController.handle(httpRequest)

        //Assert
        expect(httpResponse.statusCode).toBe(400)
        expect(httpResponse.body).toEqual(new MissingParamError('passwordConfirmation'))
    });
});