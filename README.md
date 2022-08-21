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

## Step 3 - 

