/* terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

  required_version = ">= 0.14.9"

  backend "remote" {
    organization = "TerraformRen"
    workspaces {
        name = "tfc-getting-started"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}
 */

 terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

 backend "remote" {
   organization = "TerraformRen"
   workspaces {
     name = "MyTerraformRepo"
   }
 }
 
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup1"
  location = "westus2"
}
