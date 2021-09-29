provider "aws" {
    region = "us-east-1"
}


resource "aws_s3_bucket" "test_bucket" {

  bucket = "cloudnewbucketforyou1"
/*  acl    = "private" */

  tags = {
    bucket        = "testing",
  }
}

