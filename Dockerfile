FROM openjdk:8
EXPOSE 9999
ADD target/cloud-native-homework-1.0-SNAPSHOT.jar /app.jar
CMD java -jar /app.jar
