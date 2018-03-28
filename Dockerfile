FROM openjdk:8-jdk-alpine
ARG JAR-FILE
COPY ${JAR_FILE} backend.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=dev-server","-jar","backend.jar"]