variable "os_management_hub_software_source_change_availability_managements" {
  description = <<EOT
Map of os_management_hub_software_source_change_availability_managements, attributes below
Required:
    - software_source_availabilities (block):
        - availability (optional)
        - availability_at_oci (optional)
        - software_source_id (required)
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    software_source_availabilities = list(object({
      availability        = optional(string)
      availability_at_oci = optional(string)
      software_source_id  = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.os_management_hub_software_source_change_availability_managements : (
        length(v.software_source_availabilities) >= 1
      )
    ])
    error_message = "Each software_source_availabilities list must contain at least 1 items"
  }
}

