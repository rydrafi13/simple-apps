pipeline {
    // job akan dijalankan pada agent devops1-rafi
    agent { 
        node {
            label 'devops1-rafi' 
            
        } 
    }

    // proses sdlc
    stages {
        // proses build apps
        stage('Build Apps') {
            steps {
                sh 'npm install'
            }
        }
        // proses copy environtment variable
        stage('Copy env') {
            steps {
                sh 'cp -p /home/ubuntu/Hari-1/simple-apps/.env .'
            }
        }
        // proses test apps
        stage('Testing Apps') {
            steps {
                sh 'npm test'
            }
        }
        // proses scanning apps
        stage('Scanning Apps') {
            steps {
                sh 'sonar-scanner   -Dsonar.projectKey=simple-apps   -Dsonar.sources=.   -Dsonar.host.url=http://172.23.5.14:9000   -Dsonar.login=sqp_b4d226d35dd55e429e7912772b6f6507608692bf'
            }
        }
        // proses build images
        stage('Build images') {
            steps {
                sh 'docker compose build'
            }
        }
        // proses deploy apps
        stage('Deploy Apps') {
            steps {
                sh 'docker compose up -d'
            }
        }
        // proses publish images
        stage('Publish image') {
            steps {
                echo 'Publish image'
            }
        }
    }
}