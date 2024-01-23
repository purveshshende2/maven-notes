pipeline {
    agent any

    tools {
        maven 'Maven 3'
        jdk 'Oracle JDK 11'
    }

    stages {
        stage('Checkout') {
            steps {
                // Fetching source code from GitHub
                script {
                    checkout scm
                }
            }
        }

        stage('Build') {
            steps {
                // Building the project with Maven
                script {
                    sh 'mvn clean install -DskipTests'
                }
            }
        }

        stage('Post-Build') {
            post {
                success {
                    // Echoing a message and archiving artifacts on success
                    echo "Now archiving artifacts"
                    archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
                }
            }
        }

        stage('Unit Test') {
            steps {
                // Running unit tests
                script {
                    sh 'mvn test'
                }
            }
        }
    }
}
