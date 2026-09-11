terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
  backend "s3" {
    bucket = "infra-pipeline-sep-20206"
    key    = "environments/staging/terraform.tfstate"
    region = "ap-south-2"
  }
}

provider "aws" {
  region = var.aws_region
}