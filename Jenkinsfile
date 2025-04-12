pipeline {
    agent any

    environment {
        IMAGE_NAME = 'susheel/webapp'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/RaoUmair55/testJenkin.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME:latest .'
            }
        }

        stage('Deploy Container') {
            steps {
                // Stop and remove old container if exists
                sh 'docker rm -f webapp || true'
                // Run new container
                sh 'docker run -d --name webapp -p 8081:80 $IMAGE_NAME:latest'
            }
        }
    }
}
