FROM java:8
MAINTAINER nju12
ADD target/cloud-native-homework-1.0-SNAPSHOT.jar project.jar
EXPOSE 2222
ENTRYPOINT ["java","-jar","project.jar"]