pipeline {
    agent any

    stages {
        stage('docker dev build') {
            steps {
                dir('flask_app') {
                    script {
                        dockerDevImage = docker.build("treydegale/flask_app:0.0.2")
                    }
                }
            }
        }
        stage('docker test build') {
            steps {
                dir('flask_app') {
                    sh 'docker build -t test_flaskapp .'
                }
            }
        }
        stage('run tests image') {
            steps {
                sh 'docker run test_flaskapp'
            }
        }
        stage('push image to dockerhub') {
            steps {
                script {
                    docker.withRegistry('', 'dockerhub') {
                        dockerDevImage.push();
                        dockerDevImage.push("latest");
                    }
                }
            }
        }
    }
}