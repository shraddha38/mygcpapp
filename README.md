## Why terraform?
- Infrastructure as code
- Easy to deploy, destroy, share and version control.
- Easy to test and validate (with plan and apply commands)

### Terraform has two components:
- Terraform files (`.tf` files)
- Terraform state (stored in `terraform.tfstate` file or in a remote state)

### Terraform files
Terraform files are used to define the infrastructure.
They are written in HCL (HashiCorp Configuration Language).

### Terraform state
Terraform state is a file that contains the current state of the infrastructure.

### Install terraform
- https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/install-cli

## Networking Basics
- VPC
- Subnets (public and private)
- Internet Gateway (applied at the VPC level, allows public subnets to connect to the internet)
- Security Groups (applied at the subnet level, allows to control the traffic that can enter and exit the subnet)
- NAT Gateway (used to allow private subnets to connect to the internet)
- Route Tables (applied at the subnet level, allows to control the traffic that can enter and exit the subnet)
- DNS (Domain Name System, allows to resolve domain names to IP addresses)

## GCP
- In GCP, you have to enable APIs to use any GCP service like VPC, IAM, etc.
- GCP is a pay-as-you-go service, you pay for what you use.
- GCP has a free tier for some services.
- Internet Gateway routes 

### Install gcloud CLI
- https://cloud.google.com/sdk/docs/install
```bash
cd ~/Downloads
tar -zxf google-cloud-cli-darwin-arm.tar.gz
# should see a directory called google-cloud-sdk (ls)
# move it to your home directory
mv google-cloud-sdk ~/
cd ~/google-cloud-sdk
./install.sh
```

### Initialize gcloud CLI
```bash
gcloud init
gcloud auth application-default login
# select the project you want to use, no need to accept default configuration
```

## Deploying the infrastructure
- `terraform init` to initialize the terraform files
- Run `terraform plan` to plan the changes, it may fail because of missing credentials, run `gcloud auth application-default login` to authenticate with GCP
- Run `terraform apply` to apply the changes
- Run `terraform destroy` to destroy the infrastructure

## Project pipeline
Internet → Global Forwarding Rule → HTTP Proxy → URL Map → Backend Bucket (with CDN) → Cloud Storage Bucket

## Relevant links
- [Cloud Storage Bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket#argument-reference)