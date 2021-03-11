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
                build quietPeriod: 1, job: 'MyFirstWebApp'
            }
        }
        stage('Deploy') {
            steps {
                deploy contextPath: null, war: '**/*.war'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing'
            }
        }
        stage('Release') {
            steps {
                echo 'Release'
            }
        }
    }
}
