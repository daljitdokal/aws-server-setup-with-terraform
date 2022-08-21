# AWS server setup with terraform

The purpose of this documentation is to automate your AWS cloud infrastructure.


Requirements:

- AWS account setup
- Windows or Linux machine with VSCode

## Step 1 - Intall Terraform

**Ubuntu:**

Please run following commands to setup.

```bash
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

**Windows:**

- Download latest version of Terraform - https://www.terraform.io/downloads
- Unzip and Copy `terraform.exe`
- Create new Folder in `C:\Terraform` and paste the file.
- Edit `Environment variables` via adding new `Path` value as `C:\Terraform` in `System variables`

**Testing:**

Run the folling command to test if its installed correctly:

```bash
terraform -v
``` 

## Step 2 - Setup VSCode

Install extentions:

- Terraform
- AWS Toolkit

## Step 3 - Read documentation for example provided via Terraform

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

## Step 4 - Create Project and Connect to AWS

#### Create AWS shared credentials in VScode

- Press `Cntl+Shft+p` in VSCode and Select `AWS: Crete Credentials Profile`
  - Enter `aws_access_key_id` and `aws_secret_access_key` (from your AWS account)
  - Update default name to `USER NAME` of AWS account. 

#### Install and Configure AWS Provider

Install and Configure AWS Provider:

- Create new folder `Terraform` and open it in VSCode
- Create new file `providers.tf` with following code

```bash
# Install AWS Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "vscode"
}
``` 
- Run command: `terraform init`.




