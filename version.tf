terraform {
  required_version = ">= 1.6.0"

  required_providers {
    # Pinned - older than latest (Dependabot will bump to latest)
    pinned_provider = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }

    # Single minimum - open ended (won’t create PRs)
    min_provider = {
      source  = "hashicorp/random"
      version = ">= 2.0.0"
    }

    # Range - ends lower than latest (Dependabot will try inside range, block outside)
    range_provider = {
      source  = "hashicorp/azurerm"
      version = ">= 3.80.0, <= 3.90.0"
    }

    # Pessimistic - older than latest, minor/patch only
    pessimistic_provider = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.2.20"
    }
  }
}
