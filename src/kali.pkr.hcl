
source "amazon-ebs" "kali-AMI-test" {
  access_key    = "${var.aws_access_key}"
  secret_key    = "${var.aws_secret_key}"
  region        = var.aws_region
  ami_name      = var.ami_name
  source_ami    = var.source_ami
  instance_type = var.inst_type
  ssh_username  = "terraform"
}

build {
  sources = [
    "source.amazon-ebs.kali-AMI-test"
  ]
}