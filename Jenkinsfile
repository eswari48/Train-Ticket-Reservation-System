pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git 'https://github.com/eswari48/Train-Ticket-Reservation-System.git'
            }
        }

        stage('Maven Package') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t train-ticket-reservation:latest .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Remove existing container if running
                    sh '''
                        if [ $(docker ps -aq -f name=train-ticket-app) ]; then
                            echo "Stopping and removing old container..."
                            docker rm -f train-ticket-app
                        fi
                    '''

                    // Run new container
                    sh 'docker run -d --name train-ticket-app -p 8082:8080 train-ticket-reservation:latest'
                }
            }
        }
    }
}
