resource "google_container_analysis_occurrence" "container_analysis_occurrences" {
  for_each = var.container_analysis_occurrences

  note_name       = each.value.note_name
  resource_uri    = each.value.resource_uri
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  remediation     = each.value.remediation

  attestation {
    serialized_payload = each.value.attestation.serialized_payload
    dynamic "signatures" {
      for_each = each.value.attestation.signatures
      content {
        public_key_id = signatures.value.public_key_id
        signature     = signatures.value.signature
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

