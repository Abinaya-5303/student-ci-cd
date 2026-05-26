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
                sh 'mvn clean install'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t student-ci-cd:latest .'
            }
        }
        stage('Push to DockerHub') {
    steps {
        sh 'docker tag student-ci-cd:latest abinaya5303/student-ci-cd:latest'
        sh 'docker push abinaya5303/student-ci-cd:latest'
    }
}

    }
}
