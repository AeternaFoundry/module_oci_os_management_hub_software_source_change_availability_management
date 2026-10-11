output "os_management_hub_software_source_change_availability_managements_id" {
  description = "Map of id values across all os_management_hub_software_source_change_availability_managements, keyed the same as var.os_management_hub_software_source_change_availability_managements except keys with no id are omitted"
  value       = { for k, v in oci_os_management_hub_software_source_change_availability_management.os_management_hub_software_source_change_availability_managements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "os_management_hub_software_source_change_availability_managements_software_source_availabilities" {
  description = "Map of software_source_availabilities values across all os_management_hub_software_source_change_availability_managements, keyed the same as var.os_management_hub_software_source_change_availability_managements except keys with no software_source_availabilities are omitted"
  value       = { for k, v in oci_os_management_hub_software_source_change_availability_management.os_management_hub_software_source_change_availability_managements : k => v.software_source_availabilities if v.software_source_availabilities != null && length(v.software_source_availabilities) > 0 }
}

