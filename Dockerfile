# Use OpenJDK 24 as base image
FROM openjdk:24-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR file
COPY target/*.jar app.jar

# Expose port (Cloud Run uses PORT env variable)
EXPOSE 8080

# Set environment variable for port
ENV PORT=8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]