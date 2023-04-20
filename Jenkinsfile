pipeline {
    agent any

    environment {
        pem_file = credentials('flask-app-pem')
    }
    stages {
        stage('terraform init') {
            steps {
                sh './terraformw init'
            }
        }
        stage('terraform plan') {
            steps {
                sh './terraformw plan -var aws_key_pair=${pem_file}'
            }
        }
    }
}