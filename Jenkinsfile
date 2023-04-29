pipeline {
    agent any

    environment {
        DOCKER_PASS = credentials('docker_ps')
    }

    stages {
        stage('docker dev build') {
            steps {
                dir('flask_app') {
                    sh 'docker build -t treydegale/flask_app:0.0.2 --target=dev .'
                }
            }
        }
        stage('docker test build') {
            steps {
                dir('flask_app') {
                    sh 'docker build -t test_flaskapp --target=test .'
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
                sh 'docker login -u treydegale -p $DOCKER_PASS'
                sh 'docker push treydegale/flask_app:0.0.2'
            }
        }
    }
}