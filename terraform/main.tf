
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "remote" {
    # The name of the workspace to store state in.
    organization = "Deebudapest"

    workspaces {
      name = "webapp"
    }
  }
}

provider "aws" {
  region = local.aws_region
}