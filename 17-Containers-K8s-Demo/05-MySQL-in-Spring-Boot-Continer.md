# Spring boot REST API with MySQL Database Configuration
## Configuring MySQL Container
### Create the DDL SQL Query file *demodb.sql*
```
CREATE DATABASE IF NOT EXISTS demodb;
USE demodb;
```
### Create Dockerfile
```
FROM mysql:lts

COPY demodb.sql /docker-entrypoint-initdb.d/
```
### Build the Docker Image
```
cd 05-mysql-config
docker build -t demodb-mysql:latest .
```
### Create and inspect network in docker
```
docker network create demoapp
docker network inspect demoapp
```
### Create and run the mysql image in above network
```
docker run --net demoapp --name demodb-mysql --hostname demodb-mysql -d -e MYSQL_ROOT_PASSWORD=root demodb-mysql:latest
```
## Configuring Spring book REST API with MySQL continer
### Create a Spring book REST API with local MySQL properties and test all the End points
### Update the application.properties with docker container host and database name
```
spring.application.name=books

spring.datasource.url=jdbc:mysql://demodb-mysql:3306/demodb
spring.datasource.username=root
spring.datasource.password=root
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

```
### Package the Spring Boot application to generate *.jar* file
```
mvnw clean package -DskipTests
```
### Create Dockerfile
```
FROM openjdk:21-jdk-slim

WORKDIR /app

COPY target/books-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
```
### Build the docker image
```
cd 05-01-books-rest-api
docker build -t books-api .
```
### Create and run the spring book image in the same network
```
docker run --net demoapp -d --name books-api -p 8080:8080 books-api:latest
```