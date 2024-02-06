terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket         = "daws76-state-prod"
    key            = "web"
    region         = "us-east-1"
    dynamodb_table = "daws76-locking-prod"

  }
}
provider "aws" {
  region = "us-east-1"
}

