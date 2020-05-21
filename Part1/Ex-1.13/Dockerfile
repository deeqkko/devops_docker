FROM openjdk:8

EXPOSE 8080
RUN mkdir /usr/src/spring-example-project
COPY ./spring-example-project /usr/src/spring-example-project
WORKDIR /usr/src/spring-example-project
RUN ./mvnw package
ENTRYPOINT ["java","-jar"]
CMD ["./target/docker-example-1.1.3.jar"]
