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
                bat 'mvn clean install'
            }
        }
        stage('Unit Test')
        {
            steps
            {
                bat 'mvn test'
            }
        }
        stage('Sonar Analysis') 
        {
            steps 
            {
                //withSonarQubeEnv("sonarserver")
                withSonarQubeEnv(credentialsId: 'sonar-api-key', installationName: 'sonarserver') 
                {
                    bat "mvn sonar:sonar"
                }   
            }
        }
        stage('Upload to Artifactory')
        {
	        steps
	        {
		        rtMavenDeployer
		        (
		            id: 'deployer-id' ,
		            serverId: 'artifactory-server' ,
		            releaseRepo: 'example-repo-local' ,
		            snapshotRepo: 'example-repo-local' 
		        )
		        rtMavenRun
		        (
		        pom: 'pom.xml' ,
		        goals: 'clean install' ,
		        deployerId: 'deployer-id' ,
		        )
		        rtPublishBuildInfo (
		            serverId: 'artifactory-server' ,
		                )
	        }
        }
        stage('Release') {
            steps {
                echo 'Release'
            }
        }
    }
}
