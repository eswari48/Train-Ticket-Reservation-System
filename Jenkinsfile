pipeline{
    agent any
    stages{
        stage('git checkout'){
            steps{
              git 'https://github.com/eswari48/Train-Ticket-Reservation-System.git' 
            }
        }
        stage('validate'){
            steps{
                sh 'mvn validate'
            }
        }
        stage('compile'){
            steps{
                sh 'mvn compile'
            }
        }
        stage('test'){
            steps{
                sh 'mvn test'
            }
        }
        stage('package'){
            steps{
                sh 'mvn package'
            }
        }
    }
}
