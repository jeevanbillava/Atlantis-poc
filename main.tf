provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "examples-bucket-${random_id.bucket_id.hex}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
