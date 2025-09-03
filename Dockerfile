FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy the packaged JAR file from target directory
COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
