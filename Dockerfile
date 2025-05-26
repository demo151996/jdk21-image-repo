FROM eclipse-temurin:21-jdk
LABEL maintainer="jenita.marshel@gmail.com"
COPY ./app
WORKDIR /app
CMD ["java", "-version"]
