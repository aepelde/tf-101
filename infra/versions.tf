terraform {
  required_version = "~> 1.14"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "tf-101-terraform-state-954552667813-eu-south-2-an"
    key            = "infra/terraform.tfstate"
    region         = "eu-south-2"
    dynamodb_table = "tf-101-terraform-locks"
    encrypt        = true
  }
}
