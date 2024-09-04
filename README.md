# sakaba-migration
## Preparation
```sh
brew install golang-migrate

brew install mysql
```

&nbsp;

## Create migration files
```sh
migrate create -ext sql -dir db/migration -seq <Migration Name>
```

&nbsp;

## TiDB
### Preparation
```sh
export DB_ADMIN=xxxx
export DB_PWD=xxxx
export DB_HOST=gateway01.ap-northeast-1.prod.aws.tidbcloud.com
export DB_PORT=4000
export DB_NAME=test
```

### Run migration
```sh
migrate -path db/migration -verbose -database "mysql://$DB_ADMIN:$DB_PWD@tcp($DB_HOST:$DB_PORT)/$DB_NAME?tls=true&charset=utf8&parseTime=True&loc=Local" up
```
- `schema_migrations` table stores the migration version and the status of the last migration.

### Connect
```sh
mysql --comments -u $DB_ADMIN -h $DB_HOST -P $DB_PORT -D $DB_NAME --ssl-mode=VERIFY_IDENTITY --ssl-ca=/etc/ssl/cert.pem -p$DB_PWD

SET GLOBAL tidb_skip_isolation_level_check=1;
```
