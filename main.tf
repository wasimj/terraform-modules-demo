provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}

module "example" {
  source = "./modules/" 	# https://github.com/hashicorp/terraform/issues/19745

  name = "${random_pet.server.id}"
}

resource "random_pet" "server" {

}
