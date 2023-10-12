FROM openjdk:17-jdk-slim
ENV DEFAULT_ZONE=DEFAULT_ZONE

EXPOSE 8761

COPY target/*.jar registry-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/registry-0.0.1-SNAPSHOT.jar", "DEFAULT_ZONE=$DEFAULT_ZONE"]
