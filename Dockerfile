FROM java:8
MAINTAINER nju12
ADD target/cloud-native-homework-1.0-SNAPSHOT.jar .
EXPOSE 8998
CMD java -jar /app.jar
ENTRYPOINT ["sh", "-c", "set -e && java -XX:+PrintFlagsFinal \
                                           -XX:+HeapDumpOnOutOfMemoryError \
                                           -XX:HeapDumpPath=/heapdump/heapdump.hprof \
                                           -XX:+UnlockExperimentalVMOptions \
                                           -XX:+UseCGroupMemoryLimitForHeap \
                                           $JAVA_OPTS -jar cloud-native-homework-1.0-SNAPSHOT.jar"]
