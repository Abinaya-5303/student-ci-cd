# Option 2 – Slim variant
FROM openjdk:21-slim
WORKDIR /app
COPY target/student-ci-cd-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
