terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.89.0"
    }
  }
  backend "s3" {
    bucket = "terraform-state-ecs-project"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }

}

provider "aws" {
  # Configuration options
  region = "eu-west-2"
}