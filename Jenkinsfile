pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Abinaya-5303/student-ci-cd.git'
            }
        }
        stage('Build') {
            steps {
                bat 'mvn clean install'
            }
        }
        stage('Docker Build') {
            steps {
                bat 'docker build -t student-ci-cd:latest .'
            }
        }
        stage('Push to DockerHub') {
            steps {
                bat 'docker tag student-ci-cd:latest abinaya5303/student-ci-cd:latest'
                bat 'docker push abinaya5303/student-ci-cd:latest'
            }
        }
    }
}
