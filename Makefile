all:
	docker-compose -f ./srcs/docker-compose.yml up

down:
	docker-compose -f  ./srcs/docker-compose.yml down

re:
	docker-compose -f ./srcs/docker-compose.yml up --build

clean:
	docker stop $$(docker ps -qa)
	docer rm $$(docker ps -qa)
	docker rmi $$(docker ps -qa)
	docker volume rm $$(docker volumen ls -q)
	docker network rm $$(docker network ls -q)