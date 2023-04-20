pipeline {
    agent any

    environment {
        pem_file = credentials('flask-app-pem')
    }
    stages {
        stage('download terraform') {
            steps {
                sh 'apt-get https://releases.hashicorp.com/terraform/1.4.0/terraform_1.4.0_linux_amd64.zip'
            }
        }
        stage('unzip terraform') {
            steps {
                sh 'unzip terraform_1.4.0_linux_amd64.zip'
            }
        }
        stage('move terraform') {
            steps {
                sh 'sudo mv terraform /usr/local/bin/'
            }
        }
        stage('terraform version') {
            steps {
                sh 'terraform --version'
            }
        }
        stage('terraform init') {
            steps {
                sh 'cd terraform'
                sh 'terraform init'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
    }
}