# SWE 645 : Component based Software development

## Name : Jinalben Shah
## G01246819
Assignment I : Part 2

##### Link1 : [Home page hosted on S3](http://swe645-jinal.s3-website-us-east-1.amazonaws.com/)
##### Link2 : [Info page hosted on EC2](https://ec2-54-89-187-17.compute-1.amazonaws.com/HW1WebApp/info.html)
##### Link3 : [Survey page hosted on EC2](https://ec2-54-89-187-17.compute-1.amazonaws.com/HW1WebApp/survey.html)

##### HTML and CSS files for the web application are placed under:
HW1WebApp/WebContent/survey.html <br/>
HW1WebApp/WebContent/info.html <br/>
HW1WebApp/WebContent/css/ <br/>
HW1WebApp/WebContent/images/ <br/>

## Installation steps:
##### Login into AWS EC2:
* ssh -i "swe645_jinal.pem" bitnami@ec2-54-89-187-17.compute-1.amazonaws.com

##### To see the error/ debug logs:
* ssh -i "swe645_jinal.pem" bitnami@ec2-54-89-187-17.compute-1.amazonaws.com -vvv

##### Upload WAR file from local to EC2:
* scp -i swe645_jinal.pem HW1WebApp.war bitnami@ec2-54-89-187-17.compute-1.amazonaws.com:/home/bitnami/

##### Execute this from the EC2 instance:
* sudo cp HW1WebApp.war /opt/bitnami/tomcat/webapps/
 
##### Check the UI:
* https://ec2-54-89-187-17.compute-1.amazonaws.com/HW1WebApp/info.html

##### README.md for part 1 is present under S3 project

<img src=ec2.png width="600" height="400">