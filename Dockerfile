FROM tomcat:8.0.20-jre8
COPY ./target/HW1WebApp.war /usr/local/tomcat/webapps
