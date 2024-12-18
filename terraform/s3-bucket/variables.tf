variable "aws_region" {
  description = "The AWS region for the S3 bucket"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The named  of the S3 bucket"
  type        = string
  default = "raghav-terraform-s3-bucket"
}

variable "environment" {
  description = "The environment tag (e.g., dev, prod)"
  type        = string
  default     = "dev"
}

variable "aws_access_key_id" {
  description = "AWS access key ID"
  type        = string
  sensitive   = true
}

variable "aws_secret_access_key" {
  description = "AWS secret access key"
  type        = string
  sensitive   = true
}

variable "aws_session_token" {
  description = "AWS session token (optional for temporary credentials)"
  type        = string
  sensitive   = true
}
