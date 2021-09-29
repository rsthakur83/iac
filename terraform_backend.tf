terraform {
  backend "s3" {
    bucket = "terraform_state_bucket_iac"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
