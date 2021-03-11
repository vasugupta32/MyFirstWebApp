pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Build') {
            steps {
                mvn quietPeriod: 1, job: 'MyFirstWebApp'
            }
        }
        
        stage('Sonar') {
            steps {
                 withSonarQubeEnv(credentialsId: 'sonar-api-key') {
    // some block
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
