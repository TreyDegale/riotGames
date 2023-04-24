pipeline {
    agent any

    environment {
        RIOT_GAMES_API = credentials('RIOT_GAMES_API')
    }
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