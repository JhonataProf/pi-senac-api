import { Model } from "sequelize";
import { AccountModel } from "../../../domain/models/account";

export interface AddAccountRepository {
    add(accountModel: AccountModel): Promise<Model<any, any>>
}