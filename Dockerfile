FROM gradle:jdk17

WORKDIR /app

COPY ./build/libs/netflix-eureka-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8080

CMD ["java", "-jar", "-Dspring.profiles.active=dev", "app.jar"]