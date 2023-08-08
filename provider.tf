

provider "aws" {
  region = "us-west-2"
}


# Setting Up Remote State
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket = "0c264ceb-9d63-4b0a-b172-afd2e9e45962-tfstate"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
