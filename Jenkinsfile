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
                echo 'Scanning Apps'
            }
        }
        // proses build images
        stage('Build images') {
            steps {
                echo 'Build images'
            }
        }
        // proses deploy apps
        stage('Deploy Apps') {
            steps {
                echo 'Deploy Apps'
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