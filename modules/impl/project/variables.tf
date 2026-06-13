variable "projects" {
  type = list(object({
    name               = string
    visibility         = optional(string)
    version_control    = optional(string)
    work_item_template = optional(string)
    description        = optional(string)
    features           = optional(map(string))
  }))
  description = "Configuration settings for the ADO project."
}

