# sakaba-migration
## Preparation
```sh
brew install golang-migrate
```

&nbsp;

## Create migration files
```sh
migrate create -ext sql -dir db/migration -seq <Migration Name>
```

&nbsp;

## Launch MariaDB server inside a Docker container
```sh
docker run --name sakaba_db -e MYSQL_ROOT_PASSWORD=mypass -p 3306:3306 -d docker.io/library/mariadb:10.6.1
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
