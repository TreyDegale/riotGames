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
                sh 'docker run -p 8000:8000 riotgames:0.0.1'
            }
        }
    }
}