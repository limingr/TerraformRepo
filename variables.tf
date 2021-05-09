resource "azurerm_subscription" "example" {
  alias             = "examplesub"
  subscription_name = "Visual Studio Enterprise Subscription"
  subscription_id   = "aae27198-c02d-49fc-a164-d45d35267dd2"
}

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
  default = {
    westus2 = "16.04-LTS"
    eastus  = "18.04-LTS"
  }
}
