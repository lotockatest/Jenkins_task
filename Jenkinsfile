pipeline {
    agent any 
    stages {
        stage ('Checkout') {
            steps {
                git url: 'https://github.com/lotockatest/Jenkins_task.git', branch: 'master'
            }
        }
        stage ('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage ('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage ('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
