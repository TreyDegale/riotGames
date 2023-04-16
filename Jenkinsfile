pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t riotGames:0.0.1 .'
            }
        }
        stage('Test') {
            steps {
                sh 'pytest'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -dp 8000:8000 riotGames:0.0.1'
            }
        }
    }
}