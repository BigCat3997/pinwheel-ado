module "local_ado_project" {
  source = "../../base/project"

  for_each           = { for project in var.projects : project.name => project }
  name               = each.value.name
  visibility         = each.value.visibility
  version_control    = each.value.version_control
  work_item_template = each.value.work_item_template
  description        = each.value.description
  features           = each.value.features
}
