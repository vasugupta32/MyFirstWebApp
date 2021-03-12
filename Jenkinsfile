pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Hello World'
                bat 'mvn clean install'
            }
        }
        
        stage('Sonar Analysis') 
        {
            steps 
            {
                
                //withSonarQubeEnv("sonarserver")
                withSonarQubeEnv(credentialsId: 'sonar-api-key') 

                {
                    bat "mvn sonar:sonar"
                }
                
            }
        }
        stage('Release') {
            steps {
                echo 'Release'
            }
        }
    }
}
