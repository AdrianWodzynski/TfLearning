resource "azurerm_resource_group" "rg-monitoring" {
  name                = "rg-monitoring-01"
  location            = var.location
}


resource "azurerm_dashboard" "dashboard" {
  name                 = var.name
  resource_group_name  = azurerm_resource_group.rg-monitoring.name
  location             = var.location
  tags = var.tags
  dashboard_properties = templatefile("dashboard-template.tpl",
    {
      title_content    = "example"
    }
  )
}


resource "azurerm_monitor_action_group" "action_group_example1" {
  name                      = "actiongroup_send_email"
  resource_group_name       =  azurerm_resource_group.rg-monitoring.name
  short_name                = "email"
  
  email_receiver {
    name          = "sendtoexample"
    email_address = "example@contoso.com"
  }
}

resource "azurerm_monitor_metric_alert" "metric_alert_example" {
  name                  = "metric-alert-example"
  resource_group_name   = azurerm_resource_group.rg-monitoring.name
  scopes                = ["/subscriptions/00000000-0000-0000-0000-000000000000"]
  description           = "This alert will monitor if any VM Cpu percentage is greater than 85."
  target_resource_type  = "Microsoft.Compute/virtualMachines"
  target_resource_location = "West Europe"
  

 criteria { 
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = 85
 }

  action {
    action_group_id = azurerm_monitor_action_group.action_group_example1.id

  }
}



