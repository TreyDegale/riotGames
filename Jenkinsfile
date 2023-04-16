pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t riotgames:0.0.1 .'
            }
        }
        stage("ls") {
            steps {
                sh 'ls'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -e RIOT_API_KEY=12345 --rm riotgames:0.0.1'
            }
        }
        stage('Test') {
            steps {
                sh 'python --version'
            }
        }
    }
}