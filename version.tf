terraform {
  required_version = ">= 1.7.0"

  required_providers {
    # Range version - Dependabot may NOT propose updates if new version is still within range
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.11.0, <= 4.19.0"
    }

    # Pinned version - Dependabot WILL create PR to bump it if newer version exists
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "1.2.21"
    }

    # Another range version - test Dependabot behavior
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.0, < 4.0.0"
    }

    # Pinned version - to see PR creation
    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }
  }
}
