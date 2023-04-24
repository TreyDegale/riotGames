pipeline {
    agent any

    environment {
        RIOT_API_KEY = credentials('RIOT_GAMES_API')
    }
    stages {
        stage('ansible-playbook') {
            steps {
                ansiblePlaybook credentialsId: 'linux-ami2', disableHostKeyChecking: true, installation: 'Ansible', inventory: 'ansible.inv', playbook: 'ansible-playbook.yml'
            }
        }
    }
}