output "id" {
  description = "Build definition ID."
  value       = azuredevops_build_definition.new.id
}

output "name" {
  description = "Build definition name."
  value       = azuredevops_build_definition.new.name
}

output "revision" {
  description = "Build definition revision."
  value       = azuredevops_build_definition.new.revision
}
