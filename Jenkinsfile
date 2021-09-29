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

        stage('Terraform Unit Tests') {
            steps {
                withAWS(credentials: 'aws-credential', region: 'us-east-1') {
                   sh 'pytest -k terraform tests/ -v'
                }
              }
            }

        stage('Terraform Compliance') {
            steps {
                withAWS(credentials: 'aws-credential', region: 'us-east-1') {
                   sh 'terraform-compliance -f compliance/ -p /tmp/file.out'
                }
              }
            }

        stage('Terraform Security Testing Using CheckOv') {
            steps {
                withAWS(credentials: 'aws-credential', region: 'us-east-1') {
                   sh 'checkov -f /tmp/tfplan.json'
                }
              }
            }


	}
     }
