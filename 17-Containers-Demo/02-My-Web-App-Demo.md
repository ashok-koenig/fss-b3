# My Web App - Container demo
### Create a html file *index.html*
```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Web App</title>
</head>
<body>
    <h1>My First Web App Running in Container</h1>
</body>
</html>
```
### Create *Dockerfile*
```
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```
### Build image from Dockerfile
```
cd 02-my-web-app
docker build -t my-webapp:latest .
```
### Create and run container from my-webapp image
```
docker run -d -p 80:80 --name webapp my-webapp:latest
```
### Test the running container by visiting http://localhost in a web browser.
```
http://localhost
```

## Steps to push / pull image from/to docker hub
### 1. Create an account in https://hub.docker.com/
### 2. Create a repository in your docker hub account (public / private)
### 3. Login with docker hub account in docker decktop
```
docker login
```
### 4. Tag the docker image with the docker hub repository
```
docker tag <local-image-name> <you-docker-hub-id>/<repo-name>:<tag>
```
### 5. push the tagged image into docker hub
```
docker push <you-docker-hub-id>/<repo-name>:<tag>
```
### 6. pull the image from docker hub
```
docker pull <you-docker-hub-id>/<repo-name>:<tag>
```
### 7. Create and run the container from pulled image
```
docker run -d -p 80:80 --name <container-name> <you-docker-hub-id>/<repo-name>:<tag>
```
### Test the running container by visiting http://localhost in a web browser.
```
http://localhost
```