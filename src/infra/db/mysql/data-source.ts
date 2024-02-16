import 'reflect-metadata'
import { DataSource } from 'typeorm'
import { PacienteSchema } from './schema/paciente'

const SnakeNamingStrategy =
  // eslint-disable-next-line @typescript-eslint/no-var-requires
  require('typeorm-naming-strategies').SnakeNamingStrategy

export const AppDataSource = new DataSource({
  type: 'mysql',
  host: 'localhost',
  port: 3312,
  username: 'root',
  password: 'admin',
  database: 'sistema_podologia',
  synchronize: true,
  logging: true,
  entities: [PacienteSchema],
  migrations: [],
  subscribers: [],
  namingStrategy: new SnakeNamingStrategy()
})
