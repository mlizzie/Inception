SRCS = ./srcs/

all: prepare up

up: 
	@ cd $(SRCS) &&  docker-compose up --build ;
down: 
	@ cd $(SRCS) && docker-compose down;

prepare:
	@ cd $(SRCS)/requirements/tools && sudo sh prepare.sh

clean:
	@ cd $(SRCS) && docker-compose down && docker system prune ;
	@ sudo rm -Rf ~/data/;

fclean:
	@ cd $(SRCS) && docker-compose down && docker system prune -a;
	@ sudo rm -Rf ~/data/;

.PHONY: fclean prepare run all 