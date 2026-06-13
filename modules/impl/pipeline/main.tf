module "local_ado_pipeline" {
  source = "../../base/pipeline"

  project_id          = data.azuredevops_project.this.id
  name                = var.name
  path                = var.path
  agent_pool_name     = var.agent_pool_name
  queue_status        = var.queue_status
  use_yaml_ci_trigger = var.use_yaml_ci_trigger
  skip_first_run      = var.skip_first_run
  variable_groups     = [for vg_name in var.variable_group_names : data.azuredevops_variable_group.this[vg_name].id]

  repository = merge(
    var.repository,
    { service_connection_id = data.azuredevops_serviceendpoint_github.this.id }
  )
}
