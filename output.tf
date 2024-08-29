# AWS EC2 Instance ID
output "aws_instance_id" {
  value = aws_instance.example.id
}



# Azure Resource Group Name
output "azure_resource_group_name" {
  value = azurerm_resource_group.example.name
}



# GCP Compute Instance ID
output "gcp_instance_id" {
  value = google_compute_instance.example.id
}
