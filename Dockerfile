#
# Build stage
#
FROM maven:3.8.2-jdk-11 AS build
COPY . .
RUN mvn clean package -DskipTests

#
# Package stage
#
FROM openjdk:11-jdk-slim
COPY --from=build /target/knighthunt-0.0.1-SNAPSHOT.jar knighthunt-0.0.1-SNAPSHOT.jar
# ENV PORT=9087
EXPOSE 9087
ENTRYPOINT ["java","-jar","knighthunt-0.0.1-SNAPSHOT.jar"]
