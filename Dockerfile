FROM openjdk:8-jdk-alpine
LABEL maintainer="Ramazan Sakin <ramazansakin63@gmail.com>"

VOLUME /tmp
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} monitoring-demo.jar

EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/monitoring-demo.jar"]