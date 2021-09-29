pipeline {
    agent any
    stages {

        stage('Install Dependency & Initiate Terraform Backend S3 Bucket ') {
            steps {
                    sh 'chmod +x install.sh'
                    sh "./install.sh"
               
              }
            }

        stage('Create  Bucket') {
            steps {
                withAWS(credentials: 'aws-credential', region: 'us-east-1') {
                    sh 'chmod +x bucket.sh'
                    sh "./bucket.sh"
                }
              }
            }
	}
     }
