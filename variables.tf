# GCE variables

variable "gcp_project" {
  description = "Your project name"
}

variable "gcp_region" {
  description = "The desired region for the first network & VPN and project"
}

variable "gcp_service_account_key" {
  description = "The JSON service account string"
}

# AWS variables

variable "aws_region" {
  description = "The AWS region to deploy into"
}

variable "aws_access_key" {
  description = "Your 20-character AWS Access Key"
}

variable "aws_secret_key" {
  description = "Your 40-character AWS Secret Key"
}