pipeline {
    agent any

    environment {
        pem_file = credentials('flask-app-pem')
    }
    stages {
        stage('download terraform') {
            steps {
                sh 'sudo apt-get update && sudo apt-get install -y gnupg software-properties-common'
            }
        }
        stage('unzip terraform') {
            steps {
                sh 'wget -O- https://apt.releases.hashicorp.com/gpg | \
                    gpg --dearmor | \
                    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg'
            }
        }
        stage('move terraform') {
            steps {
                sh 'gpg --no-default-keyring \
                    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
                    --fingerprint'
            }
        }
        stage('terraform version') {
            steps {
                sh 'echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
                    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
                    sudo tee /etc/apt/sources.list.d/hashicorp.list'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo apt update'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'sudo apt-get install terraform'
            }
        }
    }
}