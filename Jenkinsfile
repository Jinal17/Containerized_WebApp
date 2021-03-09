pipeline {
	agent any
	environment {
		DOCKERHUB_PWD = 'kuntesh123'

	}
	stages {
		stage("Building HW1 image"){
				steps {
					script {
						checkout scm
						sh 'rm -rf *.war'
						sh 'jar -cvf HW1WebApp.war -C WebContent/ .'
						sh 'echo WAR created'
						sh "docker login -u jinal0217 -p ${DOCKERHUB_PWD}"
						sh "docker build -t jinal0217/mywebapp:v1 ."
					}
				}
			}
			stage("Pushing image to dockerhub"){
			  steps {
			    script {
			      sh 'docker push jinal0217/mywebapp:v1'
			    }
			  }
			}
			stage("Deploying to Rancher as single pod"){
			    steps {
			      sh 'kubectl set image deployment/hw2-pipeline hw2-pipeline=jinal0217/mywebapp:v1 -n jenkins-pipeline'
			    }
			}
			stage("Deploying to Rancher as with load balancer"){
			    steps {
			      sh 'kubectl set image deployment/hw2-webapp-lb hw2-webapp-lb=mywebapp:v1 -n jenkins-pipeline'
			    }
			}
	}
}
