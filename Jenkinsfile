pipeline {
    agent any

    environment {
        RIOT_API_KEY = credentials('RIOT_GAMES_API')
    }
    stages {
        stage('ssh') {
            steps {
                sh 'ssh -vvv -i ~/aws/aws_keys/flask-app-ec2.pem ubuntu@18.204.204.225'
            }
        }
        stage('mkdir') {
            steps {
                sh 'mkdir test-v1'
            }
        }
    }
}