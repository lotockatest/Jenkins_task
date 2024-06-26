pipeline {
    agent any 
    stages {
        stage ('Checkout') {
            steps {
                git url: 'https://git-codecommit.eu-central-1.amazonaws.com/v1/repos/Kristina_Lotocka_Jenkins', credentialsId: 'aws-credentials', branch: 'main'
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
