# ✅ Use an official OpenJDK base image
FROM openjdk:8-jdk-alpine

# Optional: reduce Tomcat startup time
VOLUME /tmp

# ✅ Copy your built JAR file to the container
ADD target/springboot-application-0.0.1-SNAPSHOT.jar app.jar

# Optional: pre-touch the JAR for filesystem compatibility
RUN sh -c 'touch /app.jar'

# ✅ Command to run the Spring Boot application
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
