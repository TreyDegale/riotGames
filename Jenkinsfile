pipeline {
    agent any

    environment {
        RIOT_API_KEY = credentials('RIOT_GAMES_API')
    }
    stages {
        stage('ansible-playbook') {
            steps {
                ansiblePlaybook credentialsId: 'ec2-ssh', disableHostKeyChecking: true, installation: 'Ansible', inventory: 'ansible.inv', playbook: 'ansible-playbook.yml'
            }
        }
    }
}