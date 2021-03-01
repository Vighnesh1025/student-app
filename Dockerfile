FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar