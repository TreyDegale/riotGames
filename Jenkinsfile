pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t riotgames .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -e RIOT_API_KEY=12345 --rm riotgames'
            }
        }
        stage('Test') {
            steps {
                sh 'pytest'
            }
        }
    }
}