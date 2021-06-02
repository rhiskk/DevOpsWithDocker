FROM openjdk:8 as build-stage

COPY spring-example-project .

RUN ./mvnw package

FROM openjdk:8-jre-alpine

COPY --from=build-stage /target/docker-example-1.1.3.jar .

RUN adduser -D appuser

USER appuser

EXPOSE 8080

CMD java -jar docker-example-1.1.3.jar
