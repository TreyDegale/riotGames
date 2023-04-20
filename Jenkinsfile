pipeline {
    agent any

    environment {
        pem_file = credentials('flask-app-pem')
        aws_keys = credentials('access_secret_key')
    }
    stages {
        stage('terraform init') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                }
            }
        }
        stage('terraform plan') {
            steps {
                dir('terraform') {
                    sh 'terraform plan -var aws_key_pair=${pem_file} -var aws_access_key=${aws_keys} -var aws_secret_key=${aws_keys}'
                }
            }
        }
    }
}