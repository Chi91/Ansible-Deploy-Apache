# Ansible-Deploy-Apache

## Provisioning an EC2 Instance with Terraform and Installing an Apache Web Server with Ansible

### Table of Contents
1. Introduction
2. Prerequisites
3. Steps to Provision EC2 Instance with Terraform
4. Steps to Install Apache Web Server with Ansible
5. Additional Information

### Introduction
This project involves using Terraform to provision an EC2 instance on AWS and Ansible to install and configure an Apache web server on the instance. Additionally, it includes deploying a custom HTML file to the web server.

### Prerequisites
- AWS CLI configured with necessary permissions
- Terraform installed (version 0.12 or higher)
- Ansible installed (version 2.9 or higher)
- An AWS Key Pair for SSH access to the EC2 instance

### Steps to Provision EC2 Instance with Terraform
1. **Create a Terraform configuration file**: Define the AWS provider, the EC2 instance resource, and the security group.
2. **Initialize Terraform**: Run `terraform init` to initialize your working directory with Terraform configuration files.
3. **Apply Terraform configuration**: Run `terraform apply` to create the EC2 instance and the security group as specified in your configuration.

### Steps to Install Apache Web Server with Ansible
1. **Create an Ansible playbook**: Write a playbook to install Apache, start the service, and deploy a custom HTML file.
2. **Run the Ansible playbook**: Use the command `ansible-playbook` to execute your playbook on the provisioned EC2 instance.

### Additional Information
- Ensure that the security group allows inbound traffic on port 80 (HTTP) to access the Apache web server.
- Use SSH to connect to your EC2 instance for any manual configurations or troubleshooting.

This README provides an overview of the process. For detailed configuration files and scripts, refer to the corresponding sections in your project repository.
