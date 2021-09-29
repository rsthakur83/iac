terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-iac"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
