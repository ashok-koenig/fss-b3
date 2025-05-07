# Contianer Basics
## Basic Docker Commands
### Check Docker version
```
docker -v
```
### List all images
```
docker images
```
### List all running containers
```
docker ps
```
### list all containers (including stopped)
```
docker ps -a
```
### Help and search in docker CLI
```
docker --help
docker search --help
docker search ubuntu
docker pull --help
```
### pull the ubuntu image
```
docker pull ubuntu
```
### Create ubuntu container (Run the ubuntu image)
```
docker run -dit --name my-ubuntu ubuntu:latest
```
### To run commands within the Ubuntu OS Container
```
docker exec -it my-ubuntu /bin/bash
ls
touch my-file.txt
echo "Sample content inside my ubuntu container" > my-file.txt
cat my-file.txt
exit
```
### pause / unpause ubuntu containers
```
docker pause my-ubuntu
docker unpause my-ubuntu
```
### stop / start / restart ubuntu containers
```
docker stop my-ubuntu
docker ps -a
docker start my-ubuntu
docker restart my-ubuntu
```
### stop and remove the container
```
docker stop my-ubuntu
docker rm my-ubuntu
```
### Remove the running container
```
docker rm -f my-ubuntu
```
### Remove the ubuntu image
```
docker rmi ubuntu:latest
```