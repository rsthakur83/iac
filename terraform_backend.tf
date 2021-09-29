terraform {
  backend "s3" {
    bucket = "terraform_state_bucket_iac23"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
