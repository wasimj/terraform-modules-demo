provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}

module "example" {
  source = "modules/"

  name = "New server 1"
}

module "example2" {
  source = "modules/"

  name = "New server 2"
}

# resource "aws_instance" "example2" {
#   ami           = "${var.ami}"
#   instance_type = "${lookup(var.instance_type, "small")}"
#   key_name      = "DevopsKeyPair"

#   tags {
#     Name        = "Intro to DevOps Web Server 1"
#   }

#   user_data = "${data.template_file.init.rendered}"
# }
