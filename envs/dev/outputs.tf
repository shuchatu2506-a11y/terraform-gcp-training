output "vm_names" {
  description = "VM names"
  value       = module.vm.vm_names
}

output "vm_external_ips" {
  description = "VM public IPs"
  value       = module.vm.vm_external_ips
}