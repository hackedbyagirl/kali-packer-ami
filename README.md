<p align="center">
  <a href="" rel="noopener">
 <img width=400px height=400px src="https://github.com/hackedbyagirl/kali-packer-ami/blob/main/imgs/kali.png" alt="Kali AMI Project logo"></a>
</p>

<h3 align="center">Kali Packer AMI</h3>

<div align="center">

  [![Status](https://img.shields.io/badge/status-Active-brightgreen)](https://github.com/hackedbyagirl/kali-packer-ami) 
  [![GitHub Issues](https://img.shields.io/github/issues/hackedbyagirl/kali-packer-ami)](https://github.com/hackedbyagirl/kali-packer-ami/issues)
  
</div>

***

<p align="center"> Repository used to create Kali Linux AMIs that can be deployed to AWS EC2
    <br> 
</p>

## Table of Contents
- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Deployment](#deploy)
- [Built Using](#built_using)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)


## About <a name = "about"></a>
This project will use `packer` and `amazon-ebs` to create a Kali based AMI by launching an EC2 instance from a source AMI, provisioning the running machine, and then created an AMI from that machine. 

The builder will create temporary keypairs, security group rules, etc. that provide it temporary access to the instance while the image is being created. This simplifies configuration quite a bit.

> Note 
>
> The builder does *not* manage AMIs. Once it creates an AMI and stores it in your account, it is up to you to use, delete, etc. the AMI. (Ex: Terraform)

## Getting Started <a name = "getting_started"></a>
These instructions will get you a copy of the project up and running for development and testing purposes.

### Prerequisites
1. [Packer](https://www.packer.io/) and [Terraform](https://www.terraform.io/) 
2. [AWS CLI](https://aws.amazon.com/cli/)
3. AWS Account - [Create AWS Account](https://www.aws.amazon.com/free)

## Usage <a name="usage"></a>
Clone the repository
```bash
git clone https://github.com/hackedbyagirl/kali-packer-ami.git
```

Before building the image, it is important that you have the correct environmental variables set. 

Linux or MacOS
```bash
# Packer Variables
export PKR_VAR_aws_access_key=<YOUR_ACCESSKEY>
export PKR_VAR_aws_secret_key=<YOUR_SECRETKEY>

# AWS CLI Integration
export AWS_ACCESS_KEY_ID=<YOUR_ACCESSKEY>
export AWS_SECRET_ACCESS_KEY=<YOUR_SECRETKEY>
export AWS_DEFAULT_REGION=<region>
```

Windows

```bash 
# AWS CLI Integration
setx AWS_ACCESS_KEY_ID <AKIAIOSFODNN7EXAMPLE>
setx AWS_SECRET_ACCESS_KEY <wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY>
setx AWS_DEFAULT_REGION us-west-1

# Packer Variable
setx PKR_VAR_aws_access_key YOURKEY
setx PKR_VAR_aws_secret_key YOURKEY
```
Edit the following cloud-init configuration file:
```bash
vim data/defaults.cfg
```

Initialize the packer repository and validate the source code
```bash
# Navigate to repository source code
cd kali-packer-ami/src

# Initialize and validate
packer init .
packer validate .

# Build
packer build .
```
***Important:** Note down the AMI-ID as this will be used for provisioning and deployment using terraform*
> Bug: You may get an error the first time you run this and it says you need to accept terms and conditions. Navigate to the link it provides. 
> I am still Trying to figure this out on the backend

## Deployment <a name = "deploy"></a>
Sit back, relax, and enjoy because this can take awhile :-)

*Note: can be used in conjunction with https://github.com/hackedbyagirl/Eris*

## Built Using <a name = "built_using"></a>
- `Packer` - Image Builder
- `Terrafrom` - Infrastructure Deployment
- `AWS` - Cloud Management

## Authors <a name = "authors"></a>
- [@hackedbyagirl](https://github.com/hackedbyagirl)

## Acknowledgements <a name = "acknowledgement"></a>
- [@CISAGOV](https://github.com/cisagov/kali-packer) 

  
