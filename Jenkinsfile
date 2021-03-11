pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        
        stage('Sonar Analysis') 
        {
            steps 
            {
                withSonarQubeEnv("sonarserver")
                {
                    sh "mvn sonar:sonar"
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
