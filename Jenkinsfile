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
        stage('Release') {
            steps {
                echo 'Release'
            }
        }
    }
}
