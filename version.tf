terraform {
  required_version = ">= 1.6.0"

  required_providers {
    # 1️⃣ Pinned - minor/patch bump
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"        # latest patch: 3.2.4 → minor/patch PR
    }

    # 2️⃣ Minimum only - minor/patch bump
    random = {
      source  = "hashicorp/random"
      version = ">= 2.0.0"     # latest minor: 3.2.0 → minor/patch PR
    }

    # 3️⃣ Range with upper bound - minor bump, major blocked
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.80.0, <= 4.43.0"  # latest minor/patch: 4.43.0 → minor PR
    }

    # 4️⃣ Pessimistic - minor/patch bump only
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.2.31"     # latest 1.2.x → minor PR
    }

    # 5️⃣ Open-ended minimum - major possible
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"     # latest 5.x → major PR if allowed
    }

    # 6️⃣ Pinned major behind - major PR
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.38.0"        # latest 3.x → major PR
    }

    # 7️⃣ Pessimistic minor behind - minor PR
    helm = {
      source  = "hashicorp/helm"
      version = "~> 3.0.2"     # latest 2.5.x → minor/patch PR
    }

    # 8️⃣ Range with upper bound below latest major - blocked major
    azapi = {
      source  = "azapi/azapi"
      version = ">= 1.5.0, <= 2.1.0"  # latest 3.x → major PR blocked
    }
  }
}
