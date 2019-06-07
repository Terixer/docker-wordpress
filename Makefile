start:
	docker-compose up -d

build:
	docker-compose up -d
	./permissions.sh
	
rebuild:
	docker-compose down --volumes
	sudo rm -rf ./wordpress
	sudo rm -rf ./database
	docker-compose up -d --build
	./permissions.sh

remove:
	docker-compose down --volumes
	sudo rm -rf ./wordpress
	sudo rm -rf ./database

stop:
	docker-compose down --volumes

