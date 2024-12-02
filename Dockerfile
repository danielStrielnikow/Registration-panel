FROM maven:3.9.4-amazoncorretto-21-debian-bookworm AS maven_build
COPY ./pom.xml ./pom.xml
RUN mvn dependency:go-offline -B
COPY ./src ./src
RUN mvn package

FROM openjdk:21-slim-bookworm
EXPOSE 8080
COPY --from=maven_build /target/security-*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

