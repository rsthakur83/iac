wget https://releases.hashicorp.com/terraform/0.14.0/terraform_0.14.0_linux_amd64.zip
#apt-get update; apt-get install awscli unzip -y
unzip terraform_0.14.0_linux_amd64.zip
chmod +x terraform
#pip3 install -r requirements.txt
#sudo mkdir /root/.aws/
echo `pwd`
echo `pwd`
echo `pwd`
echo `ls -l`
#./terraform init
#./terraform init -reconfigure
#./terraform init
sudo ./terraform init
sudo ./terraform plan -out=/tmp/plan.out
sudo ./terraform show -no-color -json /tmp/plan.out > /tmp/test.json
sudo ./terraform apply --auto-approve

sudo ./terraform plan -out=file.out

sudo ./terraform show -json /tmp/plan.out > /tmp/tfplan.json
