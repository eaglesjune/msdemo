FROM vm01.cloud.com:5000/java:8
VOLUME /tmp
ADD target/app.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8090
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]