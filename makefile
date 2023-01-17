postgres:
	docker run --rm -e POSTGRES_PASSWORD=password -v $(shell pwd)/db:/docker-entrypoint-initdb.d --name database-postgress postgres
start:
	docker exec -it database-postgress psql -h localhost -U postgres
stop:
	docker stop database-postgress
