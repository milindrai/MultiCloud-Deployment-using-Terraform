# MultiCloud Deployment using Terraform

This Terraform project is designed to manage infrastructure across multiple cloud providers, including AWS, Azure, and GCP. It automates the deployment of various resources such as virtual machines, storage accounts, and databases across these platforms.

## Project Structure

The project is organized into several directories, each targeting a specific cloud provider:

- **`.terraform/`**: Internal Terraform state and cache files. Managed by Terraform.
- **`aws/`**: Contains AWS-specific Terraform configurations.
  - **`ec2.tf`**: AWS EC2 instance resources.
  - **`rds.tf`**: AWS RDS database instances.
  - **`s3.tf`**: AWS S3 buckets.
- **`azure/`**: Contains Azure-specific Terraform configurations.
  - **`network.tf`**: Azure network resources.
  - **`storage.tf`**: Azure storage accounts.
  - **`vm.tf`**: Azure virtual machines.
- **`gcp/`**: Contains GCP-specific Terraform configurations.
  - **`compute.tf`**: GCP compute instances.
  - **`sql.tf`**: GCP SQL database instances.
  - **`storage.tf`**: GCP storage buckets.
- **`.terraform.lock.hcl`**: Lock file for ensuring consistent dependency versions.
- **`main.tf`**: Primary configuration file for providers and global settings.
- **`outputs.tf`**: Defines output values displayed after applying the configuration.
- **`variables.tf`**: Defines input variables used in the Terraform configurations.

## Prerequisites

- Terraform installed on your local machine.
- Access to AWS, Azure, and GCP accounts with permissions to create and manage resources.

## Configuration

Before deploying the infrastructure, you need to configure credentials and settings for each cloud provider:

1. **AWS**: Set your AWS credentials using environment variables or the AWS CLI. The default region is set to `us-east-1` but can be overridden in `variables.tf`.

2. **Azure**: Authenticate using the Azure CLI or by setting environment variables.

3. **GCP**: Place your GCP credentials JSON file in a secure location and update the `gcp_credentials_file` variable in `variables.tf` with the path to this file. Set the `gcp_project_id` variable to your GCP project ID.

## Deployment

To deploy the infrastructure, follow these steps:

1. Initialize Terraform:

   ```sh
   terraform init
2. Review the planned infrastructure changes:

   ```sh
   terraform plan
3. Apply the changes to create the infrastructure:

   ```sh
   terraform apply
4. To destroy the infrastructure, use:

   ```sh
   terraform destroy