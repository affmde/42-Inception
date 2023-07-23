all:
#hostsed add 127.0.0.1 andrferr.42.fr && echo "successfully added andrferr.42.fr to /etc/hosts"
#sudo echo "127.0.0.1 andrferr.42.fr" >> /etc/hosts && echo "successfully added andrferr.42.fr to /etc/hosts"
#docker-compose -f ./srcs/docker-compose.yml up
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f  ./srcs/docker-compose.yml down

#clean:
#	docker stop $$(docker ps -qa)
#	docer rm $$(docker ps -qa)
#	docker rmi $$(docker ps -qa)
#	docker volume rm $$(docker volumen ls -q)
#	docker network rm $$(docker network ls -q)

clean:
	docker-compose -f ./srcs/docker-compose.yml down --rmi all -v

fclean: clean
#@hostsed rm 127.0.0.1 andrferr && echo "successfully removed tblaase.42.fr to /etc/hosts"
	@if [ -d "/home/andrferr/data" ]; then \
	sudo rm -rf /home/andrferr/data/* && \
	echo "successfully removed all contents from /home/andrferr/data"; \
	fi;

re: fclean all

info:
		@echo "=============================== IMAGES ==============================="
		@docker images
		@echo
		@echo "============================= CONTAINERS ============================="
		@docker ps -a
		@echo
		@echo "=============== NETWORKS ==============="
		@docker network ls
		@echo
		@echo "====== VOLUMES ======"
		@docker volume ls