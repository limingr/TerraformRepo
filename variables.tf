
variable "location" {}

variable "prefix" {
  type    = string
  default = "my"
}

variable "tags" {
  type = map

  default = {
    Environment = "Terraform GS"
    Dept        = "Engineering"
  }
}

variable "sku" {
  type = map
  default = {
    westus2 = "16.04-LTS"
    eastus  = "18.04-LTS"
  }
}

variable "rg_name" {
    type = string
    description = "resource group name"
}

variable "environment" {
    type = string
    value = "Environment"
}

