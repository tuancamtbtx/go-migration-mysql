mysql:
	docker run --name mysql8 -p 3306:3306  -e MYSQL_ROOT_PASSWORD=secret -d mysql:8

createdb:
	docker exec -it mysql8 mysql -u root -p -e "CREATE DATABASE test;"

.PHONY: mysql createdb dropdb migrateup migratedown migrateup1 migratedown1 sqlc test server mock
