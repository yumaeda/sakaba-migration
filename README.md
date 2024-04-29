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

## Launch MariaDB server inside a Docker container
```sh
docker run --name sakaba_db -e MYSQL_ROOT_PASSWORD=mypass -p 3306:3306 -d docker.io/library/mariadb:10.8.3
```

&nbsp;

## Connect to MariaDB inside the container
```sh
mysql -h 0.0.0.0 -P 3306 -u root -p
```

## Create `sakaba` database
```sh
CREATE DATABASE sakaba;
```

## Run migration
```sh
migrate -path db/migration -verbose -database 'mysql://root:mypass@tcp(0.0.0.0:3306)/sakaba' up
```

- `schema_migrations` table stores the migration version and the status of the last migration.


## Create Functions
### Enable `log_bin_trust_function_creators` flag.
- Login to AWS Console.
- Create a new "Parameter Group" and set `log_bin_trust_function_creators` to `1`.
- Update the instance to use the new parameter group.


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
migrate -path ti-db/migration -verbose -database "mysql://$DB_ADMIN:$DB_PWD@tcp($DB_HOST:$DB_PORT)/$DB_NAME?tls=anything&x-tls-ca=%2Fetc%2Fssl%2Fcert.pem" up
```

### Connect
```sh
mysql --comments -u $DB_ADMIN -h $DB_HOST -P $DB_PORT -D $DB_NAME --ssl-mode=VERIFY_IDENTITY --ssl-ca=/etc/ssl/cert.pem -p $DB_PWD

SET GLOBAL tidb_skip_isolation_level_check=1;
```
