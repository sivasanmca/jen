pipeline {
    agent any
    stages {
        stage('SCM Checkout') {
          steps{
            echo 'SCM Checkout...'
	    git 'https://github.com/sivasanmca/jen.git'
            
              }
          }
          stage('Test') {
          steps{
            echo 'Testing the application...'
	    sh ' mvn package' 
              }
          }

	 stage('Build Docker Image') {
          steps{
            echo 'Building the Docker Image...'
	  sh 'docker build -t sivasanmca/dockerimage:${Build_Number} .'
              }
          }
	 stage('Push Docker Image') {
          steps{
            echo 'Pushing the Docker Image...'
              }
          }
 	stage('Archving') {
          steps{
            echo 'Archving the Docker Images...'
              }
          }

    }      
    }      
