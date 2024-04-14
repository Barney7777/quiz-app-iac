provider "aws" {
  region = "ap-southeast-2"

  default_tags {
    tags = {
      "Automation"  = "Terraform"
      "Project"     = "quiz-app"
      "Environment" = "dev"
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.6.3"
}