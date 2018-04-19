variable "name" {
  type = "string"

  default = "Intro to DevOps Web Server 0"
}

variable "ami" {
  type = "string"

  default = "ami-1853ac65"
}

variable "instance_type" {
	type = "map"

  default = {
    small = "t2.micro"
    large = "t2.large"
  } 
}