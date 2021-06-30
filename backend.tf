terraform {
  backend "s3" {
    bucket  = "terraform-global-state-techstack-acc"
    region  = "us-east-1"
    encrypt = true
    key     = "eks-test/terraform.tfstate"
  }
}