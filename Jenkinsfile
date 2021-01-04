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
	  sh 'docker build -t sivasanmca/dockerimage:${BUILD_NUMBER} .'
              }
          }
	 stage('Docker Login') {
          steps{
            echo 'Login to the Docker...'
	    withCredentials([string(credentialsId: '', variable: 'docker1pwd')]) {
    	     sh "docker login -u sivasanmca -p ${docker1pwd}"
		 }  
	  }          
          }
	   stage('Push Docker Image') {
          steps{
            echo 'Push Docker Images...'
		  sh 'docker push sivasanmca/dockerimage:${BUILD_NUMBER)'  
              }
          }
	    
 	stage('Archving') {
          steps{
            echo 'Archving the Docker Images...'
              }
          }

    }      
    }      
