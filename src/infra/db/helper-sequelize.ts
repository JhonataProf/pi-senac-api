import { Sequelize } from "sequelize"

export const SequelizeHelper = {
    client: null,
    uri: null,
    connect(): Sequelize {
        return new Sequelize('sistema_podologia', 'root', 'admin', {
            host: 'localhost',
            dialect: 'mysql',
            port: 3306,
        })
    }
}