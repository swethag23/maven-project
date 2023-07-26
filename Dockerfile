# image to build a webapp image

FROM tomcat:latest
RUN rm -rf webapps
RUN mv webapps.dist webapps
EXPOSE 8080
COPY $WORKSPACE/build_webapp/target/webapp-6.0-SNAPSHOT.war /usr/local/tomcat/webapps
