FROM adoptopenjdk/openjdk11:alpine-jre

VOLUME /tmp

ADD app.jar yongky.jar

RUN sh -c 'touch yongky.jar'

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/yongky.jar"]
