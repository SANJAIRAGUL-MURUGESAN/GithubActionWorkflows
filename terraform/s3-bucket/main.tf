provider "aws" {
  region                  = var.aws_region
  access_key              = var.aws_access_key_id
  secret_key              = var.aws_secret_access_key
  token                   = var.aws_session_token
}


resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}


output "bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}
