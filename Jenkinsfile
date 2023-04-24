pipeline {
    agent any

    environment {
        RIOT_GAMES_API = credentials('RIOT_GAMES_API')
    }
    stages {
        stage('ansible-playbook') {
            steps {
                ansiblePlaybook credentialsId: 'linux-ami2', disableHostKeyChecking: true, installation: 'Ansible', inventory: 'ansible.inv', playbook: 'ansible-playbook.yml', vaultCredentialsId: 'RIOT_GAMES_API'
            }
        }
    }
}