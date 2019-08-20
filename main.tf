provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}

module "example" {
  source = "./modules/" 	# https://github.com/hashicorp/terraform/issues/19745

  name = "New server 1"
}

module "example2" {
  source = "./modules/"

  name = "New server 2"
}
