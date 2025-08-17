terraform { 
  cloud { 
    
    organization = "kavitha1501" 

    workspaces { 
      name = "localfile" 
    } 
  } 
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
features {}
client_id="c391aa41-99a3-4c14-acac-31ff4e52a905"
client_secret="VuA8Q~R1vxHLr7RclqD3bscEqlpWi~GpFTkK-a9y"
tenant_id="7597b8dc-1559-4285-901d-856b7ac20009"
subscription_id="6babc3f8-793c-4200-9aa3-51e8d33ff572"
}
variable "rgname" {
  default = "terraformrgkavi1234"
}
variable "location" {
  default = "West US 3"
}
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}
