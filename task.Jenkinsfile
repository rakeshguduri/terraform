pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git url: 'https://github.com/rakeshguduri/terraform.git'
                    branch: "main"
            }
        }
        stage('init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('action') {
            steps {
                sh 'terraform $action --auto-approve'
            }
        }
    }
}
