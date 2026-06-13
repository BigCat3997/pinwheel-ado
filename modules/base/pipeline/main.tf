resource "azuredevops_build_definition" "new" {
  project_id      = var.project_id
  name            = var.name
  path            = var.path
  agent_pool_name = var.agent_pool_name
  queue_status    = var.queue_status
  variable_groups = var.variable_groups

  ci_trigger {
    use_yaml = var.repository.repo_type == "GitHub" ? false : var.use_yaml_ci_trigger
  }

  features {
    skip_first_run = var.skip_first_run
  }

  repository {
    repo_id               = var.repository.repo_id
    repo_type             = var.repository.repo_type
    branch_name           = var.repository.branch_name
    yml_path              = var.repository.yml_path
    service_connection_id = try(var.repository.service_connection_id, null)
    github_enterprise_url = try(var.repository.github_enterprise_url, null)
    url                   = try(var.repository.url, null)
    report_build_status   = var.repository.repo_type == "GitHub" ? false : try(var.repository.report_build_status, true)
  }
}
