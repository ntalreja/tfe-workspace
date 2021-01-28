provider "azurerm" {
  features {}
}

variable "prefix" {}
variable "environment" {}
variable "location" {}

resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-tfe-rg"
  location = var.location

  tags = {
    "testenvironment" = var.environment
  }
}
