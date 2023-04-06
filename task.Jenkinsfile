pipeline {
    agent any
    stages {
        stage ("Clone") {
            steps {
                git branch: "main", url: "https://github.com/rakeshguduri/terraform.git"
            }
        }    
        stage("action") {
            steps {
                sh "terraform init"
                sh "terraform fmt"
                sh "terraform validate"
                sh "terraform apply"
                sh "yes"
                
            }
        }    
        
    }
}
