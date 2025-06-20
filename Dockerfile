# Use stable Java 8 Alpine image
FROM eclipse-temurin:8-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the jar file into the container
COPY target/springboot-application-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app runs on (optional)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

