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
            REGISTRY=hubtest.xiamenair.com.cn
            DOCKERHUB_PASSWORD=123@abc
            DOCKERHUB_USERNAME=22592
            steps {
                echo 'current path ******************'
                sh 'pwd'
                echo 'delivery' 
                sh 'docker login ${REGISTRY} -u ${DOCKERHUB_USERNAME} -p ${DOCKERHUB_PASSWORD}'
            }
        }
    }
}
