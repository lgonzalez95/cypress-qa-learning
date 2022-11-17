pipeline{
    agent any

    stages{
        stage('Setup'){
            steps{
                sh 'chmod +x -R scripts/'
                sh './scripts/clear-files.sh'
            }
        }

        stage('Build'){
            steps{
                sh 'docker build -t cypress-test-runner .'
            }
        }

        stage('Run'){
            steps{
                sh 'docker compose up --force-recreate'
            }
        }
    }
}
