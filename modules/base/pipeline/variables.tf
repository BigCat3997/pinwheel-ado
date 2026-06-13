variable "project_id" {
  description = "Azure DevOps project ID for the pipeline."
  type        = string
}

variable "name" {
  description = "Pipeline name."
  type        = string
}

variable "path" {
  description = "Folder path in Azure DevOps pipelines tree."
  type        = string
  default     = "\\"
}

variable "agent_pool_name" {
  description = "Agent pool name used by the pipeline."
  type        = string
  default     = "Azure Pipelines"
}

variable "queue_status" {
  description = "Queue status: enabled, paused, or disabled."
  type        = string
  default     = "enabled"
}

variable "use_yaml_ci_trigger" {
  description = "Whether CI trigger config comes from YAML file."
  type        = bool
  default     = true
}

variable "skip_first_run" {
  description = "Skip first run after creating pipeline."
  type        = bool
  default     = true
}

variable "variable_groups" {
  description = "Library Variable Group IDs to attach to this pipeline."
  type        = list(number)
  default     = []
}

variable "repository" {
  description = "Repository settings for the pipeline source."
  type = object({
    repo_id               = string
    yml_path              = string
    repo_type             = optional(string, "GitHub")
    branch_name           = optional(string, "main")
    service_connection_id = optional(string)
    github_enterprise_url = optional(string)
    url                   = optional(string)
    report_build_status   = optional(bool, true)
  })
}
