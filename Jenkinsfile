pipeline {
    agent any

    environment {
        RIOT_API_KEY = credentials('RIOT_GAMES_API')
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t riotgames .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -e API_KEY=$RIOT_API_KEY --rm riotgames'
            }
        }
        stage('Test') {
            steps {
                sh 'pytest'
            }
        }
    }
}