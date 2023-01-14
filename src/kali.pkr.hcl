
source "amazon-ebs" "kali-AMI-test" {
  access_key    = "${var.aws_access_key}"
  secret_key    = "${var.aws_secret_key}"
  region        = var.aws_region
  ami_name      = var.ami_name
  source_ami    = var.source_ami
  instance_type = var.inst_type
  ssh_username  = "kali"
  associate_public_ip_address  = true
  temporary_key_pair_type = "ed25519"

  subnet_filter {
    filters = {
      "tag:Name" = "test-build"
    }
  }
}

build {
  sources = [
    "source.amazon-ebs.kali-AMI-test"
  ]

  provisioner "ansible" {
    playbook_file = "../ansible/playbook.yml"
//    ansible_env_vars = [
//      "ANSIBLE_SSH_ARGS='-oHostKeyAlgorithms=+ssh-rsa -oPubkeyAcceptedKeyTypes=ssh-rsa'",
//      "ANSIBLE_HOST_KEY_CHECKING=False"
//    ]
    use_proxy     = false
  }
}
