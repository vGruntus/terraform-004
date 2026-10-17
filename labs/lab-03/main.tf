terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.26"
    }
  }

  required_version = ">= 1.12.2"
}

provider "aws" {
  region = "ap-southeast-4"
}

resource "aws_instance" "lab_03" {  
  # This is a Debian 13 instance. 
  ami           = "ami-00f6631818ded332f"
  instance_type = "t4g.micro"

  tags = {
    Name = "Lab-03"
  }  
}

# IMPORTANT! If you created your account after July 15th, 2025, 
# then you should use t3.micro for Free Tier hours instead of t2.micro.
# If that is the case, use t3.micro going forward.
# For more information, see z-more-info/aws-pricing-information.md