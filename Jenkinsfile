pipeline {
    agent any

    environment {
        // pem_file = credentials('flask-app-pem')
        // AWS_ACCESS_KEY = credentials('AWS_ACCESS_KEY')
        // AWS_SECRET_KEY = credentials('AWS_SECRET_KEY')
        RIOT_GAMES_API = credentials('RIOT_GAMES_API')
    // }
    // stages {
    //     stage('terraform init') {
    //         steps {
    //             dir('terraform') {
    //                 sh 'terraform init'
    //             }
    //         }
    //     }
    //     stage('terraform apply') {
    //         steps {
    //             dir('terraform') {
    //                 sh 'terraform apply -var aws_key_pair=${pem_file} -var aws_access_key=${AWS_ACCESS_KEY} -var aws_secret_key=${AWS_SECRET_KEY} -auto-approve'
    //             }
    //         }
    //     }
    // }
    stages {
        stage('install playbook') {
            steps {
                ansiblePlaybook credentialsId: 'linux-ami2', disableHostKeyChecking: true, installation: 'Ansible', inventory: './ansible/ansible.inv', playbook: './ansible/install-playbook.yml'
            }
        }
        stage('main playbook') {
            steps {
                ansiblePlaybook credentialsId: 'linux-ami2', disableHostKeyChecking: true, installation: 'Ansible', inventory: './ansible/ansible.inv', playbook: './ansible/ansible-playbook.yml', vaultCredentialsId: 'RIOT_GAMES_API'
            }
        }
    }
}