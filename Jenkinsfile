pipeline {
	agent any
	environment {
		DOCKER_PWD = 'swe645_homework'
	}
	stages {
		stage("Building web app image"){
				steps {
					script {
						checkout scm
						sh 'rm -rf *.war'
						sh 'jar -cvf HW1WebApp.war -C WebContent/ .'
						sh 'echo WAR created'
						sh 'echo ${DOCKER_PWD}'
						sh "docker login -u jinal0217 -p ${DOCKER_PWD}"
						sh "docker build -t jinal0217/mywebapp:v2 ."
					}
				}
			}
			stage("Pushing image to dockerhub"){
			  steps {
			    script {
			      sh 'docker push jinal0217/mywebapp:v2'
			    }
			  }
			}
			stage("Deploying and executing service on K8"){
			    steps {
			      sh 'kubectl apply -f deployment.yaml'
			      sh 'kubectl apply -f service.yaml'
			    }
			}
	}
}
