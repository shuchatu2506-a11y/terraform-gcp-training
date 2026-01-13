variable "vms" {
  description = "Map of VM names and machine types"
  type        = map(string)
}

variable "zone" {
  type = string
}

variable "subnet_name" {
  type = string
}