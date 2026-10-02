terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.66.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  }
# creating a s3 bucket when name is stored in variable file and we are calling that variable in main.tf file
  resource "aws_s3_bucket" "bucket_1" {
  bucket = var.bucket_name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
# implementing versioning in s3 bucket
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket_1.id
  versioning_configuration {
    status = "Enabled"
  }
}