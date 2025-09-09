terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }

  backend "local" {}
}

provider "aws" {
  region = "ap-southeast-1"
}

