# Kubernetes on Digitalocean

Kubernetes cluster on Digitalocean deployed with `Terraform 0.14.3`. The luster autoscaler is
enabled in the default node pool. Parameters are defined in `terraform.tfvars`.

## Dowload Terraform

```bash
TF_VER=0.14.3
curl -o terraform_${TF_VER}.zip https://releases.hashicorp.com/terraform/${TF_VER}/terraform_${TF_VER}_linux_amd64.zip
unzip terraform_${TF_VER}.zip
```

## How to create a cluster

You need to create a **DigitalOcean Personal Access Token** and pass it through an environment variable
`TF_VAR_do_token`.

```bash
export TF_VAR_do_token=xxxxxxxxxxxxxxxxxxxxx
terraform init
terraform plan
terraform apply
```

