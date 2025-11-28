# Image Java compatible ARM64 (Mac M1)
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy your JAR file
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar


# Expose port if your app runs a server
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
