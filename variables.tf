variable "container_analysis_occurrences" {
  description = <<EOT
Map of container_analysis_occurrences, attributes below
Required:
    - note_name
    - resource_uri
    - attestation (block):
        - serialized_payload (required)
        - signatures (required, block):
            - public_key_id (required)
            - signature (optional)
Optional:
    - deletion_policy
    - project
    - remediation
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    note_name       = string
    resource_uri    = string
    deletion_policy = optional(string)
    project         = optional(string)
    remediation     = optional(string)
    attestation = object({
      serialized_payload = string
      signatures = list(object({
        public_key_id = string
        signature     = optional(string)
      }))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.container_analysis_occurrences : (
        length(v.attestation.signatures) >= 1
      )
    ])
    error_message = "Each signatures list must contain at least 1 items"
  }
}

