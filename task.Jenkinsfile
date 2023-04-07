terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">4.32.0"
    }
  }
}
pipeline {
    agent any
    stages {
        
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
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
