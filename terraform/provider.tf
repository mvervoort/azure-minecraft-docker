terraform {
  required_providers {
    azuread                    = "~> 2.12"
    azurerm                    = "~> 2.87, != 2.88, != 2.88.1"
    http                       = "~> 2.1"
    null                       = "~> 3.1"
    random                     = "~> 3.1"
    time                       = "~> 0.7"
    dns                        = "~> 3.0.1"
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.9.0"
    }
  }
  required_version             = "~> 1.0, != 1.1.0" # BUG: https://github.com/hashicorp/terraform/issues/30110
}

# Microsoft Azure Resource Manager Provider
# HACK: Allow overriding of subscription_id/tenant_id with variables
provider azurerm {
  alias                        = "defaults"
  features {}
}
data azurerm_subscription default {
  provider                     = azurerm.defaults
}
provider azuread {
  tenant_id                    = var.tenant_id != null && var.tenant_id != "" ? var.tenant_id : data.azurerm_subscription.default.tenant_id
}
provider azurerm {
  features {
    template_deployment {
      delete_nested_items_during_deletion = true
    }
  }
  subscription_id              = var.subscription_id != null && var.subscription_id != "" ? var.subscription_id : data.azurerm_subscription.default.subscription_id
  tenant_id                    = var.tenant_id != null && var.tenant_id != "" ? var.tenant_id : data.azurerm_subscription.default.tenant_id
}
data azurerm_subscription primary {}

provider dns {
}

provider docker {
}
