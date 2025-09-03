FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy the WAR file instead of JAR
COPY target/*.war app.war

EXPOSE 8082:80

# Run WAR using embedded Tomcat (webapp-runner)
COPY target/dependency/webapp-runner.jar webapp-runner.jar

ENTRYPOINT ["java", "-jar", "webapp-runner.jar", "app.war"]
