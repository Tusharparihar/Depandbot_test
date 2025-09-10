terraform {
  required_version = ">= 1.6.0"

  required_providers {
    # 1️⃣ Pinned - will bump to latest patch/minor
    null = {
      source  = "hashicorp/null"
      version = "3.0.0" # latest is 3.2.4
    }

    # 2️⃣ Minimum only - Dependabot will raise a PR to bump to latest
    random = {
      source  = "hashicorp/random"
      version = ">= 2.0.0" # latest is 3.x
    }

    # 3️⃣ Range (upper bound too low) - Dependabot will expand the range
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.80.0, <= 3.90.0" # latest is 4.43.0
    }

    # 4️⃣ Pessimistic - will bump inside 1.x, but block 2.x (tests major PR)
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.2.31" # latest is 2.x
    }
  }
}
