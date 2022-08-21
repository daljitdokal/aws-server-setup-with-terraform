# AWS server setup with terraform

The purpose of this documentation is to automate your AWS cloud infrastructure.


Requirements:

- AWS account setup
- Windows or Linux machine with VSCode

## Step 1 - Intall Terraform

We are using Ubuntu distribution to inatll Terraform:

```bash
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

## Step 2 - Create Project

