variable "aws_region" {
  description = "AWS region where resources will be created."
  type        = string
}

variable "project" {
  description = "Project name used for tagging and naming resources."
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g. dev, staging, prod)."
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket to create."
  type        = string
}

variable "enable_versioning" {
  description = "Whether to enable versioning on the S3 bucket."
  type        = bool
  default     = true
}
