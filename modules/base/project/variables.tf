variable "name" {
  description = "The name of the Azure DevOps project."
  type        = string
}

variable "visibility" {
  description = "The visibility of the project (e.g., 'private', 'public')."
  type        = string
  default     = "private"
}

variable "version_control" {
  description = "The version control system for the project (e.g., 'Git', 'Tfvc')."
  type        = string
  default     = "Git"
}

variable "work_item_template" {
  description = "The work item template (e.g., 'Agile', 'Scrum', 'Basic')."
  type        = string
  default     = "Agile"
}

variable "description" {
  description = "A description for the Azure DevOps project."
  type        = string
  default     = null
}

variable "features" {
  description = "A map of project features to enable or disable."
  type        = map(string)
  default = {
    boards       = "enabled"
    repositories = "enabled"
    pipelines    = "enabled"
    testplans    = "enabled"
    artifacts    = "enabled"
  }
}
