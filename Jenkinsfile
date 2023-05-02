pipeline {
    agent any

    environment {
        DOCKER_PASS = credentials('docker_ps')
        AWS_ACCESS_KEY = credentials('AWS_ACCESS_KEY')
        AWS_SECRET_KEY = credentials('AWS_SECRET_KEY')
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
        stage('terraform fmt') {
            steps {
                dir('terraform') {
                    sh 'terraform fmt'
                }
            }
        }
        stage('terraform init') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                }
            }
        }
        stage('terraform apply') {
            steps {
                dir('terraform') {
                    sh 'terraform apply -var aws_access_key=${AWS_ACCESS_KEY} -var aws_secret_key=${AWS_SECRET_KEY} -auto-approve'
                }
            }
        }
    }
}