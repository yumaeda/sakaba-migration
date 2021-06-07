# tokyo-takeout-migration
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

## Launch a Docker container w/ MariaDB
```sh
docker pull mariadb:10.6.1
docker run --name tokyo_takeout_db -e MYSQL_ROOT_PASSWORD=mypass -p 3306:3306 -d docker.io/library/mariadb:10.6.1
```

&nbsp;

## Login to the container
```sh
docker exec -it tokyo_takeout_db /bin/sh
```

&nbsp;

## Connect to MariaDB inside the container
```sh
mysql -h 0.0.0.0 -P 3306 -u root -p
```

# Reference
- https://dev.to/techschoolguru/how-to-write-run-database-migration-in-golang-5h6g

