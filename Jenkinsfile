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
            post{
                always{
                    sh './scripts/rename-reports.sh'
                    junit('cypress/reports/*/junit/*.xml')
                    publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, includes: '**/*.html', keepAll: false, reportDir: 'cypress/reports/', reportFiles: '', reportName: 'HTML Report', reportTitles: ''])
                }
                cleanup{
                    sh 'docker compose down'
                }
            }
        }
    }
}
