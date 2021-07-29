provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Varsha-Server1" {
    ami = var.ami
    instance_type = var.i_type

    tags = {
        Name = "Varsha-Server1"
    }
}
module "s3" {
  source = "./modules/s3-module"
  bname = var.bucket
}