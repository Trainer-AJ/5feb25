pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 360, unit: 'SECONDS')
    }
    stages {
        stage('verify') {
            steps {
                sh python3 --version
                sh pip inspect
            }
        }
      stage('test') {
            steps {
               git branch: 'main', url: 'https://github.com/Trainer-AJ/5feb25'
               cd 
            }
        }
    }
}
