pipeline {
    agent { label 'devops1-rafi' }

    stages {
        stage('Build Apps') {
            steps {
                sh '''cd app
                npm install'''
            }
        }

        stage('Testing Apps') {
            steps {
                sh '''cd app
                npm test'''
            }
        }

        stage('Code Scan') {
            steps {
                sh '''cd app
                sonar-scanner   -Dsonar.projectKey=simple-apps   -Dsonar.sources=.   -Dsonar.host.url=http://172.23.1.21:9000   -Dsonar.login=sqp_0c356ab294c4fa2284fdf6160ad53b2377d59e98'''
            }
        }

        stage('Build Images') {
            steps {
                sh '''
                docker compose build'''
            }
        }

        stage('Push Images') {
            steps {
                sh '''
                docker compose push'''
            }
        }

        stage('Deploy Apps') {
            steps {
                sh '''
                docker compose up -d'''
            }
        }
    }
}