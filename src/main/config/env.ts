const env = {
  PORT_SERVER: process.env.PORT ?? 3000,
  DB_USER: process.env.DB_USER ?? 'root',
  DB_PASSWORD: process.env.DB_PASSWORD ?? 'rootpassword',
  DB_HOST: process.env.DB_HOST ?? 'db',
  DB_NAME: process.env.DB_NAME ?? 'sistema_podologia',
  DB_PORT: parseInt(process.env.DB_PORT as string) ?? 3306
}

export default env
