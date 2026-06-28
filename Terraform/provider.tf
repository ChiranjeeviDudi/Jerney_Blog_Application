# terraform {
#   required_version = ">= 1.5.0"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }

#   #   backend "s3" {
#   #     bucket         = "jerney-terraform-statefile"
#   #     key            = "auto_eks/terraform.tfstate"
#   #     region         = "ap-south-1"
#   #     dynamodb_table = "jerney-tf-lock"
#   #     encrypt        = true
#   #   }
#   backend "s3" {
#     bucket       = "jerney-terraform-state-ap-south-1-765607524544-ap-south-1-an"
#     key          = "auto_eks/terraform.tfstate"
#     region       = "ap-south-1"
#     encrypt      = true
#     use_lockfile = true
#   }
# }

# # Configure the AWS Provider
# provider "aws" {
#   region = var.aws_region

#   default_tags {
#     tags = {
#       Environment = var.environment
#       Project     = "Jerney"
#       ManagedBy   = "Terraform"
#     }
#   }
# }

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.95"
    }
  }

  backend "s3" {
    bucket       = "jerney-terraform-state-ap-south-1-765607524544-ap-south-1-an"
    key          = "auto_eks/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = var.environment
      Project     = "Jerney"
      ManagedBy   = "Terraform"
    }
  }
}
