# SWE 645 : Component based Software development

### Name : Angeela Acharya, Jinalben Shah, Kripa Pokheral, Sujana Khakural

### Homework 2:
### WebApp Home page: [here](http://swe645-jinal.s3-website-us-east-1.amazonaws.com/)
### WebApp Survey page: [here](http://a93a1d16bb4504a03ada735ff2bc4813-400275033.us-east-1.elb.amazonaws.com:8080/HW1WebApp/info.html)

#### DOCKER
Dockerfile contains : Dependencies & Web application related docker definitions
DockerHub: [here](https://hub.docker.com/repository/docker/jinal0217/mywebapp_new)

#### KUBERNETES
Deployment & Service Files Contains: container, kubernetes related deployment and execution definitions

**Cluster Name**: swe645hw2

#### Rancher: URL: [here](https://ec2-3-235-177-197.compute-1.amazonaws.com/login) 

#### Jenkins:URL: [here](http://3.236.78.179:8080/job/swe645/)

#### Git: URL : [here](https://github.com/Jinal17/swe645)

## Steps:
1. Make necessary changes in html and css files
2. Modify the **DOCKER_TAG** version in Jenkinsfile
3. Push the changes to Git
4. Build will get triggered and deploy the web application related changes on kubernetes cluster.
5. Verify the changes on URL: http://a93a1d16bb4504a03ada735ff2bc4813-400275033.us-east-1.elb.amazonaws.com:8080/HW1WebApp/survey.html
