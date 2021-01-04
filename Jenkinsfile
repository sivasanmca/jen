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
              }
          }

	 stage('Build Docker Image') {
          steps{
            echo 'Building the Docker Image...'
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
