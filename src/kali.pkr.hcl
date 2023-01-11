

source "amazon-ebs" "basic-example" {
  access_key = var.aws_access_key
  secret_key =  var.aws_secret_key
  region =  "us-east-1"
  source_ami =  "ami-fce3c696"
  instance_type =  "t2.micro"
  ssh_username =  "ubuntu"
  ami_name =  "packer_AWS {{timestamp}}"
}

build {
  sources = [
    "source.amazon-ebs.basic-example"
  ]
}