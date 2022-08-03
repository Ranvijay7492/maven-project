FROM tomcat:8
MAINTAINER Ranvijay
COPY webapp/target/webapp.war /usr/local/tomcat/webapp
EXPOSE 8080
