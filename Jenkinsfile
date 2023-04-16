pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t riotgames:0.0.1 .'
            }
        }
        stage('Test') {
            steps{
                withPythonEnv('python3') {
                    sh 'pip install pytest'
                    sh 'pytest'
                }
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -dp 8000:8000 riotgames:0.0.1'
            }
        }
    }
}