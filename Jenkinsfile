pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t riotgames:0.0.1 .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run riotgames:0.0.1'
            }
        }
    }
}