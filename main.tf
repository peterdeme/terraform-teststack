
import {
  id = "arn:aws:ssm:eu-central-1:705096403113:parameter/peterdeme-test-parameter-2-uncommon-ostrich"
  to = aws_ssm_parameter.testparam
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

# resource "random_pet" "petname" {
# }

resource "aws_ssm_parameter" "testparam" {
  name  = "peterdeme-test-parameter-2-uncommon-ostrich" # "peterdeme-test-parameter-2-${random_pet.petname.id}"
  type  = "String"
  value = "foobar12"

  tags = {
    developer = "peterdeme"
    env_name  = "development"
  }
}

# output "param_arn" {
#   value = aws_ssm_parameter.testparam.arn
# }
