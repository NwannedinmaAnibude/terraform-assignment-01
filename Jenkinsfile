pipeline {
    agent any
    
    environment {
        // Define environment variables for AWS credentials
        AWS_ACCESS_KEY_ID     = credentials('my-aws-credentials').AWS_ACCESS_KEY_ID
        AWS_SECRET_ACCESS_KEY = credentials('my-aws-credentials').AWS_SECRET_ACCESS_KEY
    }

    stages {      
        stage ("terraform init") {
            steps {
                sh ('terraform init') 
            }
        }
        
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}
