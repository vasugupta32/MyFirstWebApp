From tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/my-first-app.war /root/

CMD ["catalina.sh","run"]
