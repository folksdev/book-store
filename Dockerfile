FROM openjdk:11
WORKDIR /app
ADD target/book-store-0.0.1-SNAPSHOT.jar book-store-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=docker", "book-store-0.0.1-SNAPSHOT.jar"]
