pipeline {
    agent any

    environment {
        RIOT_API_KEY = credentials('RIOT_GAMES_API')
    }
    stages {
        stage('ssh') {
            steps {
                sh 'ssh -o StrictHostKeyChecking=no -i "~/aws/aws_keys/flask-app-ec2.pem" ec2-user@ec2-18-204-204-225.compute-1.amazonaws.com uptime'
            }
        }
        stage('mkdir') {
            steps {
                sh 'mkdir test-v1'
            }
        }
    }
}