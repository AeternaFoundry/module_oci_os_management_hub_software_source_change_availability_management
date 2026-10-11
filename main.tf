resource "oci_os_management_hub_software_source_change_availability_management" "os_management_hub_software_source_change_availability_managements" {
  for_each = var.os_management_hub_software_source_change_availability_managements


  dynamic "software_source_availabilities" {
    for_each = each.value.software_source_availabilities
    content {
      availability        = software_source_availabilities.value.availability
      availability_at_oci = software_source_availabilities.value.availability_at_oci
      software_source_id  = software_source_availabilities.value.software_source_id
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

