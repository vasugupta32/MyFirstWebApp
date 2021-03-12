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
                withSonarQubeEnv("sonarserver")
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
