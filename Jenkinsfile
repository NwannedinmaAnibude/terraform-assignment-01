pipeline {
    agent any
    
   stage('Login details to access my AWS Account'){
            steps{
                script{                    
                    withAWS(credentials: 'my-aws-credentials', region: 'eu-west-2') {

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
