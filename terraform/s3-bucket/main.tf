provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

# Create folder structure inside the bucket
resource "aws_s3_object" "folder_structure" {

  bucket = aws_s3_bucket.example_bucket.id
  key    = "${each.value}/" # Appending `/` creates a folder
}

output "bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}
