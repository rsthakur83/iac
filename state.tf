provider "aws" {
  region = "us-east-1"
}




terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-iac"
    key    = "terraform.tfstate"
    region = "aws-region"
  }
}

