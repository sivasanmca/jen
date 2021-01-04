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
	 withCredentials([string(credentialsId: 'password', variable: 'password')]) {
          sh "docker login -u sivasanmca -p ${password}"
             }  
	  }          
          }
	   stage('Push Docker Image') {
          steps{
		  sh 'docker push sivasanmca/dockerimage:${BUILD_NUMBER}'  
              }
          }
	    
 	stage('Archving') {
          steps{
             archiveArtifacts '**/target/*.jar'
              }
          }

    }      
    }      
