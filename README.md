# clean-node-api

```bash
ALTER USER 'pi-senac-user'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'pi-senac';
SELECT plugin FROM mysql.user WHERE User = 'root';
FLUSH PRIVILEGES;
```

## Configurar o usuário do banco de dados

## Com a aplicação executando, depois de iniciar o docker-compose

```bash
docker-compose exec db bash
mysql -u root -p
```

## Digite a senha: rootpassword

## Depois digite:

```bash
show databases;
```

Verifique se no seu container tem o banco sistema_podologia

Em seguida digite o seguinte comando para criar seus usuário

```bash
GRANT ALL ON sistema_podologia.* TO 'pi-senac-user'@'%' IDENTIFIED BY 'pi-senac';
FLUSH PRIVILEGES;
EXIT;
exit
```
Backup

docker exec CONTAINER /usr/bin/mysqldump -u root --password=root DATABASE > backup.sql   
Restore

cat backup.sql | docker exec -i CONTAINER /usr/bin/mysql -u root --password=root DATABASE