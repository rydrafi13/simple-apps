pipeline {
    agent { label 'devops1-rafi' }

    stages {
        stage('Build Apps') {
            steps {
                echo 'build apps'
            }
        }

        stage('Testing Apps') {
            steps {
                echo 'test apps'
            }
        }

        stage('Code Scan') {
            steps {
                echo 'code scan'
            }
        }

        stage('Build Images') {
            steps {
                echo 'build images'
            }
        }

        stage('Push Images') {
            steps {
                echo 'push image'
            }
        }

        stage('Deploy Apps') {
            steps {
                echo 'deploy apps'
            }
        }
    }
}