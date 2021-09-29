provider "aws" {
    region = "us-east-1"
}




#### S3 bucket to store terraform state file

resource "aws_s3_bucket" "terraform-state" {
  bucket        = "terraform_state_bucket_iac23"
  acl           = "private"
  force_destroy = true
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  tags = {
    Name = "Terraform State"
  }
}
