FROM openjdk:8

# requires having git cloned https://github.com/docker-hy/material-applications.git in the same folder as the Dockerfile
COPY material-applications/spring-example-project .

RUN ./mvnw package

EXPOSE 8080

CMD java -jar ./target/docker-example-1.1.3.jar
