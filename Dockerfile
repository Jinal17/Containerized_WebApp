FROM tomcat:8.0.20-jre8
COPY /var/lib/jenkins/workspace/swe645/HW1WebApp.war /usr/local/tomcat/webapps
