pipeline {
    agent any
    stages {

        stage('Install Dependency & Initiate Terraform Backend S3 Bucket ') {
            steps {
                    sh 'chmod +x install.sh'
                    sh "./install.sh"
               
              }
            }

        stage('Checking State Changes') {
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
                   sh 'sudo pytest -k terraform tests/ -v'
                }
              }
            }

        stage('Terraform Compliance') {
            steps {
                withAWS(credentials: 'aws-credential', region: 'us-east-1') {
                   sh 'sudo terraform-compliance -f compliance/ -p file.out'
                }
              }
            }

        stage('Terraform Security Testing Using CheckOv') {
            steps {
                withAWS(credentials: 'aws-credential', region: 'us-east-1') {
                   sh 'sudo checkov -f /tmp/tfplan.json --skip-check "CKV_AWS_144,CKV_AWS_21,CKV_AWS_145,CKV_AWS_19,CKV2_AWS_6"'
                }
              }
            }

        stage('Make Bucket Changes') {
            steps {
                withAWS(credentials: 'aws-credential', region: 'us-east-1') {
                    sh './terraform apply --auto-approve'
                }
              }
            }

        stage('Integration Test') {
            steps {
                withAWS(credentials: 'aws-credential', region: 'us-east-1') {
                    sh 'sudo pytest -k terraform integration/ -v'
                }
              }
            }
    }
	      post {
        always {
            cleanWs()
          }
	
	}
     }
