import { DbAddAccount } from "../../data/usecases/db-add-account"
import { BcryptAdapter } from "../../infra/criptography/bcrypt-adapter"
import { SignUpController } from "../../presentatin/controllers/signup/signup"
import { EmailValidatorAdapter } from "../../presentatin/utils/email-validator-adapter"

export const makeSignUpController = (): SignUpController => {
    const salt = 12
    const emailValidatorAdapter = new EmailValidatorAdapter()
    const bcryptAdapter = new BcryptAdapter(salt)
    const accountMongoRepository = new AccountMongoRepository()
    const dbAddAccount = new DbAddAccount(bcryptAdapter, accountMongoRepository)
    return new SignUpController(
        emailValidatorAdapter,
        dbAddAccount
    )
}