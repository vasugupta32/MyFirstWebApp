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
                bat 'mvn clean install'
            }
        }
        stage('Unit Test')
        {
            steps
            {
		echo 'Testing....'
                bat 'mvn test'
            }
        }
        stage('Sonar Analysis') 
        {
            steps 
            {
		echo 'Sonar Analysis....'
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
			echo 'Uploading....'
		        rtMavenDeployer (
    			    id: 'deployer-unique-id',
		            serverId: 'artifactory-server',
		            releaseRepo: 'example-repo-local',
		            snapshotRepo: 'example-repo-local' 
		        )
		        rtMavenRun (
		        pom: 'pom.xml',
		        goals: 'clean install',
		        deployerId: 'deployer-unique-id' 
		        )
		        rtPublishBuildInfo (
		            serverId: 'artifactory-server' 
		                )
	        }
	}
	stage ('deploy')
        {
		steps
		{
			bat 'dir'
			bat 'xcopy /S /Q /Y /F target\\*.war C:\\apache-tomcat-8.5.61\\webapps\\'
			//bat 'C:\\apache-tomcat-8.5.61\\bin\\catalina.bat restart'
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
