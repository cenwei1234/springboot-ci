pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('init') {
           steps {
            script{
              def dockerPath = tool 'docker' 
              env.PATH = "${dockerPath}/bin:${env.PATH}"
            }
           }
        }
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
                script{
                  sh "docker --version"
                }
                echo 'current path ******************'
                sh 'pwd'
                echo 'delivery' 
                sh 'docker login ${REGISTRY} -u ${DOCKERHUB_USERNAME} -p ${DOCKERHUB_PASSWORD}'
            }
        }
    }
}
