variable "project_name" {
  type        = string
  description = "Name of the Azure DevOps project."
}

variable "name" {
  type        = string
  description = "Pipeline name."
}

variable "path" {
  type        = string
  default     = "\\"
  description = "Folder path for the pipeline."
}

variable "agent_pool_name" {
  type    = string
  default = "Azure Pipelines"
}

variable "queue_status" {
  type    = string
  default = "enabled"
}

variable "use_yaml_ci_trigger" {
  type    = bool
  default = true
}

variable "skip_first_run" {
  type    = bool
  default = true
}

variable "variable_group_names" {
  type        = list(string)
  default     = []
  description = "Names of variable groups to link. IDs are resolved via data source."
}

variable "repository" {
  type = object({
    repo_id     = string
    repo_name   = string
    repo_type   = optional(string, "TfsGit")
    branch_name = optional(string, "main")
    yml_path    = string
  })
}

variable "github_service_connection_name" {
  type        = string
  default     = null
  description = "Name of the GitHub service connection in ADO. Required when repo_type is GitHub."
}
