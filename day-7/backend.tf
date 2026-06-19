terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.4"

    }
  }

  backend "s3" {
    bucket       = "waiter-kb-logs"
    key          = "day-7/terraform.tfstate"
    region       = "us-east-2"
    encrypt      = true
    use_lockfile = true
  }
}