terraform {
  required_version = ">= 1.6.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.2"  # latest patch: 3.2.4 → minor/patch PR
    }

    random = {
      source  = "hashicorp/random"
      version = "3.7.2"  # latest minor: 3.2.0 → minor/patch PR
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.80.0, <= 4.41.0"  # latest minor/patch: 4.43.0 → minor PR
    }

    google = {
      source  = "hashicorp/google"
      version = "7.2.0"  # latest 5.x → major PR if allowed
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.0.0"  # latest 3.x → major PR
    }

    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.1.15"  # latest 1.2.x → minor PR
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.0.2"  # latest 2.5.x → minor/patch PR
    }
  }
}
