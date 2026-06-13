output "id" {
  description = "The ID (GUID) of the Azure DevOps Project."
  value       = azuredevops_project.new.id
}

output "name" {
  description = "The name of the Azure DevOps Project."
  value       = azuredevops_project.new.name
}
