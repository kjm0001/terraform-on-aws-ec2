# Terraform Block
terraform {
  required_version = ">= 1.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = { # local name are module specific and should be unique per module
      # tf configuaration always refer to local nane of provider outside required_provider block
      # any name can be used for local name
      # best practice use preferred local name of that provider
      source = "hashicorp/aws" # source address [hostname]/<namespace>/<type> 
      # default hostname is registry.terraform.io
      version = "~> 3.0"
    }
  }
}
# Provider Block
provider "aws" { # aws must match name as used in required_provider name
  region = "us-east-1"
}

/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/

