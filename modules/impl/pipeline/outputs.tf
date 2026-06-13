# output "pipeline_ids" {
#   description = "Map of pipeline names to build definition IDs."
#   value       = { for name, pipeline in module.local_ado_pipeline : name => pipeline.id }
# }

# output "pipeline_revisions" {
#   description = "Map of pipeline names to current revisions."
#   value       = { for name, pipeline in module.local_ado_pipeline : name => pipeline.revision }
# }
