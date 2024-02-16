import { AppDataSource } from '../infra/db/mysql/data-source'
import env from './config/env'

AppDataSource.initialize().then(async () => {
  const app = (await import('./config/app')).default
  app.listen(env.PORT_SERVER, () =>
    console.log(`Server running at http://localhost:${env.PORT_SERVER}`)
  )
})
