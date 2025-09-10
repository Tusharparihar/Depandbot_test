terraform {
  required_version = ">= 1.6.0"

  required_providers {
    # 1️⃣ Pinned - patch/minor PR
    null = {
      source  = "hashicorp/null"
      version = "3.0.0" # latest 3.2.4 → patch PR
    }

    # 2️⃣ Minimum only - major PR later
    random = {
      source  = "hashicorp/random"
      version = ">= 2.0.0" # latest 3.x → major PR
    }

    # 3️⃣ Range - patch/minor PR
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.80.0, <= 4.43.0" # latest 4.43.0 → patch PR
    }

    # 4️⃣ Pessimistic - will create BOTH minor + major PRs
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.1.0" # latest 1.2.31 (minor PR), 2.x (major PR)
    }
  }
}
