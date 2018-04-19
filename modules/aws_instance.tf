resource "aws_instance" "example" {
  ami           = "${var.ami}"
  instance_type = "${lookup(var.instance_type, "large")}"
  key_name      = "DevopsKeyPair"

  tags {
    Name        = "${var.name}"
  }

  user_data = "${data.template_file.init.rendered}"
}

data "template_file" "init" {
  template = "${file("modules/init.tpl")}"
}