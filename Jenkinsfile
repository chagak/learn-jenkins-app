pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Start Server') {
            steps {
                sh 'npm start &'
                script {
                    // Wait for the server to be ready
                    timeout(time: 30, unit: 'SECONDS') {
                        waitUntil {
                            sh(script: 'curl -s http://localhost:3000 > /dev/null', returnStatus: true) == 0
                        }
                    }
                }
            }
        }
        stage('Test') {
            steps {
                sh 'npx playwright test --reporter=html'
            }
        }
    }
}
