# docker-lessons

## Lesson 1
Docker Basics
Docker is a computer program that performs operating-system-level virtualization

Docker containers 
Get docker image from dockerhub.com
docker pull <Repository/image-name>
Create a container to run it later on with required image.

docker create --name <container-name> <image-name>

Run docker container

docker run -it -d --name <container-name> -p <image-port>:<your system port> <image-name> bash

Example: 

$ docker run -dit --name dl-app -p 8080:90 l1-apache2

main docker run options

 -d, --detach                         Run container in background and print container ID
 
 -i, --interactive                   Keep STDIN open even if not attached
 
-t, --tty                                 Allocate a pseudo-TTY

Run a container with no options and by default you have a stdout stream (so docker run | <cmd> works); run with "-i", and you get stdin stream added (so <cmd> | docker run -i works); use "-t", usually in the combination "-it" and you have a terminal driver added, which if you are interacting with the process is likely what you want. It basically makes the container start look like a terminal connection session.

Review the list of running containers

docker ps

Pause process inside container  

docker pause <container-id/name>

Unpause container

docker unpause <container-id/name>

Stop container

docker stop <container-id/name>

Stop all containers

docker stop $(docker ps -a -q)

Kill container

docker kill <container-id/name>

Destroy container

docker rm <container-id/name>

To remove all the stopped docker containers

docker rm $(docker ps -q -f status=exited)

Login into running container 

docker exec -it <container-id/name> bash

Docker images

Docker images created from Dockerfile

Build image 

$ docker build -t <image-name> .

Store container into image 

docker commit [OPTIONS] CONTAINER [REPOSITORY[:TAG]]

Push image to dockerHub

docker push [OPTIONS] NAME[:TAG]


Useful links
https://medium.com/@nagarwal/lifecycle-of-docker-container-d2da9f85959
