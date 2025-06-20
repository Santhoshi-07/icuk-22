FROM eclipse-temurin:8-jdk-alpine

WORKDIR /app

# Copy the jar file into the container
COPY target/springboot-application-0.0.1-SNAPSHOT.jar app.jar

# Optional: pre-touch for file systems that need it
RUN sh -c 'touch app.jar'

# Start the Spring Boot application
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]


