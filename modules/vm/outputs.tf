output "vm_names" {
  description = "VM names"
  value = {
    for k, vm in google_compute_instance.this :
    k => vm.name
  }
}

output "vm_external_ips" {
  description = "VM public IPs"
  value = {
    for k, vm in google_compute_instance.this :
    k => vm.network_interface[0].access_config[0].nat_ip
  }
}