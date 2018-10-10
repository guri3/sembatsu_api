DRUN:=docker-compose run web

install:
	make docker/build \
	&& make rails/install

run:
	docker-compose up

rails/console:
	$(DRUN) rails c

rails/routes:
	$(DRUN) rails routes

rails/migrate:
	$(DRUN) rails db:migrate

# 一度に実行するとエラーを吐くので暫定別で
rails/install:
	$(DRUN) rails db:create \
	&& $(DRUN) rails db:migrate \
	&& $(DRUN) rails db:seed

rails/reinstall:
	$(DRUN) rails db:reinstall

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
	docker exec -it sembatsu_web_1 bash
