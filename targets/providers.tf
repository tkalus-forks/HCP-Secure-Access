terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = "~> 1.3.1" # or whatever you’re currently using
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.46.0"
    }
  }
}

provider "boundary" {
  addr                   = var.boundary_addr
  auth_method_id         = var.auth_method_id
  password_auth_method_login_name = var.password_auth_method_login_name
  password_auth_method_password   = var.password_auth_method_password
}

