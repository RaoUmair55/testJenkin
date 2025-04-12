pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/RaoUmair55/testJenkin.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t myimage .'
            }
        }
        stage('Deploy Container') {
            steps {
                bat 'docker run -d -p 8081:80 myimage'
            }
        }
    }
}
