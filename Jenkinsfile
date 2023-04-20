pipeline {
    agent any

    environment {
        pem_file = credentials('flask-app-pem')
    }
    tools {
        Terraform 'terraform'
    }
    stages {
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'terraform plan -var aws_key_pair=${pem_file}'
            }
        }
    }
}