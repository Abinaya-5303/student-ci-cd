# Option 1 – Full JDK
FROM openjdk:21-jdk
WORKDIR /app
COPY target/student-ci-cd-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
