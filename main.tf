#terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 3.0"
#   }
#  }
#}

resource "random_string" "random" {
  length           = 10
  special          = true
  override_special = "/@£$"
}

#provider "aws" {
#  region = "eu-central-1"
#}

#resource "aws_ssm_parameter" "testparam" {
#    name = "peterdeme-test-parameter"
#    type = "String"
#    value = "foobar"

#    tags = {
#        developer = "peterdeme"
#        env_name = "development"
#    }
#}
