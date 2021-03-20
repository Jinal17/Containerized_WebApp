pipeline {
	agent any
	environment {
		DOCKER_PWD = 'swe645_homework'
		DOCKER_TAG = 'v9'
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
						sh 'echo ${DOCKER_TAG}'
						sh "docker login -u jinal0217 -p ${DOCKER_PWD}"
						sh "docker build . -t jinal0217/mywebapp_new:${DOCKER_TAG} "
					}
				}
			}
			stage("Pushing image to dockerhub"){
			  steps {
			    script {
			      sh 'docker push jinal0217/mywebapp_new:${DOCKER_TAG}'
			    }
			  }
			}
			stage("Deploying and executing service on K8"){
			    steps {
			      sh 'sed "s/tagVersion/${DOCKER_TAG}/g" deployment.yaml > deployment-app.yaml'
			      sh 'kubectl apply -f deployment-app.yaml'
			      sh 'kubectl apply -f service.yaml'
			    }
			}
	}
}
