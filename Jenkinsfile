pipeline {
    agent any

    stages {
        stage('Login details to access my AWS Account') {
            steps {
                script {
                    withAWS(credentials: 'my-aws-credentials', region: 'eu-west-2') {
                         access to my aws account to create an S3 bucket
                    }
                }
            }
        }

        stage('terraform init') {
            steps {
                sh('terraform init')
            }
        }

        stage('terraform Action') {
            steps {
                echo "Terraform action is --> ${action}"
                sh("terraform ${action} --auto-approve")
            }
        }
    }
}
