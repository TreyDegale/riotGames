pipeline {
    agent any

    environment {
        pem_file = credentials('flask-app-pem')
        AWS_ACCESS_KEY = credentials('AWS_ACCESS_KEY')
        AWS_SECRET_KEY = credentials('AWS_SECRET_KEY')
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
                    sh 'terraform plan -var aws_key_pair=${pem_file} -var aws_access_key=${AWS_ACCESS_KEY} -var aws_secret_key=${AWS_SECRET_KEY}'
                }
            }
        }
    }
}