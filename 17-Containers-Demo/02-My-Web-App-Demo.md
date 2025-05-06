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
