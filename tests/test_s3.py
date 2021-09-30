#!/usr/bin/python3.6
from boto3 import Session
from pytest_terraform import terraform
import json

with open('/tmp/test.json') as f:
    data = json.load(f)
    mylist=data['resource_changes'][0]['change']['actions']
    print(type(data['resource_changes'][0]['change']['actions']))

print(mylist)

@terraform('aws_s3', scope='session')
def test_s3(aws_s3):
    assert aws_s3["aws_s3_bucket.test_bucket.tags"] == {
        "bucket": "testing"
    }

@terraform('aws_s3', scope='session')
def test_acl(aws_s3):
    assert aws_s3["aws_s3_bucket.test_bucket.acl"] ==  "private" 


@terraform('aws_s3', scope='session')
def test_dest(aws_s3):
    assert 'delete' not in mylist

@terraform('aws_s3', scope='session')
def test_s3_copy(aws_s3):
    s3cp = Session().client('s3')
    res =s3cp.put_object(Body="/root/terraform-test/s3.tf", Bucket="cloudnewbucketforyouiac", Key="terraformfile")
    print(res)
    
