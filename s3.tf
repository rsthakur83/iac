provider "aws" {
    region = "us-east-1"
}




resource "aws_s3_bucket" "test_bucket" {

  bucket = "cloudnewbucketforyouiac"
  acl    = "private" 

  tags = {
    bucket        = "test"
  }
}

