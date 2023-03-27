terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.76.0"
    }
  }
}


source "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    
  }
}

resource "aws_vpc {
  name = "demo-vpc"
  cidr_block = "10.0.0.0/16"
}
