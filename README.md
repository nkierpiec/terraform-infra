# Terraform Infra

## Description

Used to setup a basic infrastructue in AWS with a bastion host and 'n' nodes.

## Usage

Setup your env vars before running the commands:

``` terraform
terraform plan -var-file="input.tfvars"

terraform apply -var-file="input.tfvars"
```
