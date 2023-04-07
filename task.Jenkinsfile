pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git url: 'https://github.com/rakeshguduri/terraform.git'
                    
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

        stage('action') {
            steps {
                sh 'terraform $action --auto-approve'
            }
        }
    }
}
