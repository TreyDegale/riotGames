pipeline {
    agent any

    environment {
        RIOT_API_KEY = credentials('RIOT_GAMES_API')
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t riotgames --target dev .'
                sh 'docker build -t riotgames:test --target test .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -e API_KEY=$RIOT_API_KEY -p 8000:8000 --rm riotgames'
            }
        }
        stage('Test') {
            steps {
                sh 'docker run -e API_KEY=$RIOT_API_KEY --rm riotgames:test'
            }
        }
    }
}