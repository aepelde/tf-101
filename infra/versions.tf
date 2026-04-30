terraform {
  required_version = "~> 1.14"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket       = "tf-101-terraform-state"
    key          = "infra/terraform.tfstate"
    region       = "eu-south-2"
    use_lockfile = true
  }
}
