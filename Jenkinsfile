pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn --version'
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Deliver') {
            steps {
                echo 'current path ******************'
                sh 'pwd'
                sh './jenkins/scripts/deliver.sh'
            }
        }
    }
}
