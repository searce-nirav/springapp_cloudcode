## Stage 1
FROM maven:3.8.4-openjdk-11-slim AS builder
WORKDIR /app
COPY . .
RUN mvn install

## Stage 2
FROM openjdk:11-jdk-slim
COPY --from=builder /app/target/springboot-helloworld.jar springapp.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","springapp.jar"]
