wget https://releases.hashicorp.com/terraform/0.14.0/terraform_0.14.0_linux_amd64.zip
apt-get update; apt-get install awscli unzip -y
unzip terraform_0.14.0_linux_amd64.zip
chmod +x terraform
pip3 install -r requirements.txt
