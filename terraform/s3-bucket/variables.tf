variable "aws_region" {
  description = "The AWS region for the S3 bucket"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The named  of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "The environment tag (e.g., dev, prod)"
  type        = string
  default     = "dev"
}

