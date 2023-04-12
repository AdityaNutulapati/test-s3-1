variable "VMCount" {
    description = "How many VMs do you want to start with (number)? default=1 max=5"
    type = number
}

output "VMCount" {
  value = "${var.VMCount > 2 && var.VMCount < 6 ? var.VMCount : 2}"
}