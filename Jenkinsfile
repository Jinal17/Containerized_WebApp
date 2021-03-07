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
						def customImage = docker.build("jinal0217/swe645:v1")
					}
				}
			}
	}
}
