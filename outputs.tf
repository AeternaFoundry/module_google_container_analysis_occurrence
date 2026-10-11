output "container_analysis_occurrences_id" {
  description = "Map of id values across all container_analysis_occurrences, keyed the same as var.container_analysis_occurrences except keys with no id are omitted"
  value       = { for k, v in google_container_analysis_occurrence.container_analysis_occurrences : k => v.id if v.id != null && length(v.id) > 0 }
}
output "container_analysis_occurrences_attestation" {
  description = "Map of attestation values across all container_analysis_occurrences, keyed the same as var.container_analysis_occurrences except keys with no attestation are omitted"
  value       = { for k, v in google_container_analysis_occurrence.container_analysis_occurrences : k => one(v.attestation) if v.attestation != null && length(v.attestation) > 0 }
}
output "container_analysis_occurrences_create_time" {
  description = "Map of create_time values across all container_analysis_occurrences, keyed the same as var.container_analysis_occurrences except keys with no create_time are omitted"
  value       = { for k, v in google_container_analysis_occurrence.container_analysis_occurrences : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "container_analysis_occurrences_deletion_policy" {
  description = "Map of deletion_policy values across all container_analysis_occurrences, keyed the same as var.container_analysis_occurrences except keys with no deletion_policy are omitted"
  value       = { for k, v in google_container_analysis_occurrence.container_analysis_occurrences : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "container_analysis_occurrences_kind" {
  description = "Map of kind values across all container_analysis_occurrences, keyed the same as var.container_analysis_occurrences except keys with no kind are omitted"
  value       = { for k, v in google_container_analysis_occurrence.container_analysis_occurrences : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "container_analysis_occurrences_name" {
  description = "Map of name values across all container_analysis_occurrences, keyed the same as var.container_analysis_occurrences except keys with no name are omitted"
  value       = { for k, v in google_container_analysis_occurrence.container_analysis_occurrences : k => v.name if v.name != null && length(v.name) > 0 }
}
output "container_analysis_occurrences_note_name" {
  description = "Map of note_name values across all container_analysis_occurrences, keyed the same as var.container_analysis_occurrences except keys with no note_name are omitted"
  value       = { for k, v in google_container_analysis_occurrence.container_analysis_occurrences : k => v.note_name if v.note_name != null && length(v.note_name) > 0 }
}
output "container_analysis_occurrences_project" {
  description = "Map of project values across all container_analysis_occurrences, keyed the same as var.container_analysis_occurrences except keys with no project are omitted"
  value       = { for k, v in google_container_analysis_occurrence.container_analysis_occurrences : k => v.project if v.project != null && length(v.project) > 0 }
}
output "container_analysis_occurrences_remediation" {
  description = "Map of remediation values across all container_analysis_occurrences, keyed the same as var.container_analysis_occurrences except keys with no remediation are omitted"
  value       = { for k, v in google_container_analysis_occurrence.container_analysis_occurrences : k => v.remediation if v.remediation != null && length(v.remediation) > 0 }
}
output "container_analysis_occurrences_resource_uri" {
  description = "Map of resource_uri values across all container_analysis_occurrences, keyed the same as var.container_analysis_occurrences except keys with no resource_uri are omitted"
  value       = { for k, v in google_container_analysis_occurrence.container_analysis_occurrences : k => v.resource_uri if v.resource_uri != null && length(v.resource_uri) > 0 }
}
output "container_analysis_occurrences_update_time" {
  description = "Map of update_time values across all container_analysis_occurrences, keyed the same as var.container_analysis_occurrences except keys with no update_time are omitted"
  value       = { for k, v in google_container_analysis_occurrence.container_analysis_occurrences : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

