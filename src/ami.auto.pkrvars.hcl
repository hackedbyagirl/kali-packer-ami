// ami.auto.pkrvars.hcl

// Variables that are loaded automatically and are the same for every build. This
// is where the AMI build variables will be stored. File is not needed to be passed
// at the command line.

// Access Configuration
aws_region = "us-west-1"

// AMI Configuration
ami_name = "Kali-Packer-Provision"
//ami_desc = "Kali AMI Test"
//ami_tag  = ''

// Run Configuration
inst_type  = "t2.medium"
source_ami = "ami-08e895caaf450b4f9"
