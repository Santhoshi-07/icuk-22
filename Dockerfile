FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/springboot-application-0.0.1-SNAPSHOT.jar springboot-application.jar
RUN sh -c 'touch /springboot-application.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","springboot-application.jar"]
EXPOSE 8081
