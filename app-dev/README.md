# Main - App Dev

Make sure to follow the instructions under `setup` before running.

## Usage

``` terraform
terraform init -backend-config="./backends/us-west-1.tf"

terraform plan -var-file="input.tfvars"

terraform apply -var-file="input.tfvars"

terraform destroy -var-file="input.tfvars"
```

## Setup

setup the ssh keys using ssh-keygen and export env vars for inputs.
