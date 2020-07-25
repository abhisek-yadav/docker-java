FROM openjdk:8-alpine

WORKDIR /usr/app

COPY  .  /usr/app

RUN javac src/com/test/MainApp.java

CMD java -cp ./target com.test.MainApp

# To build this image: docker build -t abhisekyadav/docker-image-java:latest .

# To create a container out of this image: docker run abhisekyadav/docker-image-java:latest

# To check the content inside container: docker run -it  abhisekyadav/docker-image-java:latest sh
