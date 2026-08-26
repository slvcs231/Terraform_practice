terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    bucket = "slvcs31"
    key    = "slvc31_pr_dev"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

