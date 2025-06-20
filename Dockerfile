FROM openjdk:8-jdk-alpine

VOLUME /tmp

# Copy the .jar (now directly in the context)
ADD springboot-application-0.0.1-SNAPSHOT.jar app.jar

RUN sh -c 'touch /app.jar'

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

