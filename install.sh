sudo wget https://releases.hashicorp.com/terraform/0.14.0/terraform_0.14.0_linux_amd64.zip
sudo apt-get update; apt-get install awscli unzip -y
sudo unzip terraform_0.14.0_linux_amd64.zip
chmod +x terraform
cd backend;../terraform init;../terraform plan;../terraform apply --auto-approve
pip3 install -r requirements.txt
