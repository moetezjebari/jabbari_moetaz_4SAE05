# Use official Eclipse Temurin (Adoptium) Java 17 JDK on Alpine
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy your Maven-built jar into the image
COPY target/student-management.jar app.jar

# Expose port if your app runs a server (optional)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]
