run:
	docker-compose up

docker/build: docker-compose.yml
	docker-compose build

docker/start:
	docker-compose up -d

docker/down:
	docker-compose down

docker/logs:
	docker-compose logs

docker/clean:
	docker-compose rm

docker/bash:
	docker exec -it $(shell docker-compose ps -q) bash
