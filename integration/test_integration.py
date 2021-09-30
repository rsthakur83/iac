#!/usr/bin/python3.6
from boto3 import Session
from pytest_terraform import terraform
import json


@terraform('aws_s3', scope='session')
def test_s3_copy(aws_s3):
    s3cp = Session().client('s3')
    res =s3cp.put_object(Body="/root/terraform-test/s3.tf", Bucket="cloudnewbucketforyouiac", Key="terraformfile")
