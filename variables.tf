# AWS Region
variable "aws_region" {
  description = "The AWS region to deploy resources in."
  default     = "us-east-1"
}



# GCP Project ID
variable "gcp_project_id" {
  description = "The GCP project ID."
  type        = string
}




# GCP Credentials File
variable "gcp_credentials_file" {
  description = "Path to the GCP credentials JSON file."
  type        = string
}
