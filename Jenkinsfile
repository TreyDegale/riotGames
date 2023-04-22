pipeline {
    agent any

    environment {
        RIOT_API_KEY = credentials('RIOT_GAMES_API')
        flask-app-pem = credentials('flask-app-pem')
    }
    stages {
        stage('ssh') {
            steps {
                sh 'ssh -i $flask-app-ec2.pem ubuntu@ec2-18-204-204-225.compute-1.amazonaws.com'
            }
        }
        stage('mkdir') {
            steps {
                sh 'mkdir test-v1'
            }
        }
    }
}