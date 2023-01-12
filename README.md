<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://github.com/hackedbyagirl/kali-packer-ami/blob/main/imgs/kali.png" alt="Kali AMI Project logo"></a>
</p>

<h3 align="center">Kali Packer AMI</h3>

<div align="center">

  [![Status](https://img.shields.io/badge/status-in%20development-yellowgreen)](https://github.com/hackedbyagirl/kali-packer-ami) 
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

### Setup
TBD

## Usage <a name="usage"></a>
Coming soon

## Built Using <a name = "built_using"></a>
- `Packer` - Image Builder
- `Terrafrom` - Infrastructure Deployment
- `AWS` - Cloud Management

## Authors <a name = "authors"></a>
- [@hackedbyagirl](https://github.com/hackedbyagirl)

## Acknowledgements <a name = "acknowledgement"></a>
- [@CISAGOV](https://github.com/cisagov/kali-packer) 

  
