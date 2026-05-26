# Option 2 – Eclipse Temurin (Adoptium build of OpenJDK)
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY target/student-ci-cd-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
