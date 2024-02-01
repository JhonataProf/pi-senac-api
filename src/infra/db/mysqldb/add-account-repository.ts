import { Model } from "sequelize";
import { AddAccountRepository } from "../../../data/protocols/db/add-account-repository";
import { AccountModel } from "../../../domain/models/account";
import { User } from "../mappings/user";

export class AccountRepository implements AddAccountRepository {
    async add(accountModel: AccountModel): Promise<Model<any, any>> {
        const userDb = User
        // return await userDb.create({ 
        //     name: accountModel.name, 
        //     email: accountModel.email, 
        //     password: accountModel.password 
        // })
        const testUseDb = userDb.build({
            name: accountModel.name,
            email: accountModel.email,
            password: accountModel.password  
        })
        return testUseDb.save()

    }
}