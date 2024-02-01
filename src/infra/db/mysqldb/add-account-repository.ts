import { AccountModel } from "../../../domain/models/account";
import { User } from "../mappings/user";


export class AccountRepository implements AddAccountRepository {
    async add(accountModel: AccountModel) {
        const userDb = User
        const newUser = await userDb.create({
            name: accountModel.name,
            email: accountModel.email,
            password: accountModel.password
        })
    }
}