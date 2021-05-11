mysql:
	docker run --name mysql8 -p 3306:3306  -e MYSQL_ROOT_PASSWORD=secret -d mysql:8

execmysql:
	docker exec -it mysql8 mysql -u root -p
createdb:
	docker exec -it mysql8 mysql -u root -p -e "CREATE DATABASE simple_bank;"
migrateup:
	migrate  -path ./db/migration -database "mysql://root:secret@tcp(localhost:3306)/simple_bank?charset=utf8&parseTime=True&loc=Local&multiStatements=true" -verbose up
migratedown:
	migrate  -path ./db/migration -database "mysql://root:secret@tcp(localhost:3306)/simple_bank?charset=utf8&parseTime=True&loc=Local&multiStatements=true" -verbose down

init_schema:
	migrate create -ext sql -dir ./db/migration -seq $(name)
tidy:
	go mod tidy
.PHONY: mysql createdb dropdb migrateup migratedown
