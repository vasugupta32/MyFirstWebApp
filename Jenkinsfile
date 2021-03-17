pipeline {
    agent any

    stages {
        stage('ChaeckOut')
        {
            steps
            {
                checkout scm
            }
        }
        stage('Build') 
        {
            steps 
            {
                echo 'Hello World'
		echo 'Building.....'
            }
        }
        stage('Unit Test')
        {
            steps
            {
		echo 'Testing....'
                
            }
        }
        stage('Sonar Analysis') 
        {
            steps 
            {
		echo 'Sonar Analysis....'
               
            }
        }
        stage('Upload to Artifactory')
        {
	        steps
	        {
			echo 'Uploading....'
		       
	        }
	}
        stage('Release') {
            steps 
	    {
                echo 'Releasing...'
            }
        }
    }
}
