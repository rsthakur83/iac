provider "aws" {
    region = "us-east-1"
}


resource "aws_s3_bucket" "test_bucket" {

  bucket = "cloudnewbucketforyouiac-newone"
/*  acl    = "private" */

  tags = {
    bucket        = "testing",
  }
}

