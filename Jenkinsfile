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
        stage('Test') {
            steps {
                no public field ‘gradleBuild’ (or getter method) found in class org.jfrog.hudson.pipeline.scripted.steps.ArtifactoryGradleBuild
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
