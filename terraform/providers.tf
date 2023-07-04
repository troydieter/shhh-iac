terraform {
  backend "s3" {}
  required_version = ">= 1.4.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = local.common_tags
  }
}

locals {
  common_tags = merge({
    "env"    = var.env
  })
}