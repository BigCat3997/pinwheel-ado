data "azuredevops_project" "this" {
  name = var.project_name
}

data "azuredevops_serviceendpoint_github" "this" {
  project_id            = data.azuredevops_project.this.id
  service_endpoint_name = var.github_service_connection_name
}

data "azuredevops_variable_group" "this" {
  for_each = toset(var.variable_group_names)

  project_id = data.azuredevops_project.this.id
  name       = each.value
}
