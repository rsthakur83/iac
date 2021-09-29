pipeline {
    agent any
    stages {

        stage('Install Dependency & Packages') {
            steps {
                    sh 'chmod +x install.sh'
                    sh "./install.sh"
               
              }
            }

        stage('Create Terraform State File Bucket & Bucket') {
            steps {
                withAWS(credentials: 'aws-credential', region: 'us-east-1') {
                    sh 'chmod +x bucket.sh'
                    sh "./bucket.sh"
                }
              }
            }
	}
     }
