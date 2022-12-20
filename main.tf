terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "random_pet" "petname" {
}

resource "aws_ssm_parameter" "testparam" {
  name  = "peterdeme-test-parameter-2-${random_pet.petname.id}"
  type  = "String"
  value = "foobar1"

  tags = {
    developer = "peterdeme"
    env_name  = "development"
  }
}

# resource "random_string" "random" {
#   length           = 48
#   special          = true
#   override_special = "/@£$"
# }
