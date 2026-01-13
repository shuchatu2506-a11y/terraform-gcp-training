variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "training-subnet"
}

variable "subnet_cidr" {
  description = "CIDR range for subnet"
  type        = string
  default     = "10.10.0.0/24"
}

variable "subnet_region" {
  description = "Region for subnet"
  type        = string
  default     = "us-central1"
}

variable "ssh_source_ranges" {
  description = "IP ranges allowed to SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "network_tags" {
  description = "Network tags for firewall targeting"
  type        = list(string)
  default     = ["ssh-access"]
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
  default     = "training-vm"
}

variable "machine_type" {
  description = "GCE machine type"
  type        = string
  default     = "e2-medium"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "env" {
  description = "Environment name (dev/stage/prod)"
  type        = string
}