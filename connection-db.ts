import { SequelizeHelper } from "./src/infra/db/helper-sequelize";

(
   async () => {
    try {
        const sequelize = await SequelizeHelper.connect()
        await sequelize.authenticate();
        console.log('Connection has been established successfully.');
      } catch (error) {
        console.error('Unable to connect to the database:', error);
      }
   }
)()