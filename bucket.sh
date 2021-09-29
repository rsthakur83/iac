mkdir /root/.aws/
echo "[default]"  >> /root/.aws/credentials
terraform plan -out=/tmp/plan.out
terraform show -no-color -json /tmp/plan.out > /tmp/test.json
terraform apply --auto-approve
