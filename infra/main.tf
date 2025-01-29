resource "azurerm_resource_group" "rg" {
  name     = "rg-cler-streamlit-test"
  location = var.location
}


resource "azurerm_service_plan" "streamlit_app_plan" {
  name                = "streamlit-test-app-plan"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "streamlit_app" {
  name                = "streamlit-app-test-cler"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.streamlit_app_plan.location
  service_plan_id     = azurerm_service_plan.streamlit_app_plan.id

  site_config {
    application_stack {
      python_version = "3.11"
    }

  }
}

# resource "azurerm_app_service_source_control" "streamlit_app" {
#   app_id   = azurerm_linux_web_app.streamlit_app.id
#   repo_url = "https://github.com/manuguth/chat-bot-streamlit-test"
#   branch   = "main"
# }
