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
                mvn clean install
            }
        }
        stage('Release') {
            steps {
                echo 'Release'
            }
        }
    }
}
