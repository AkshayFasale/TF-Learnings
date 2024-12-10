#Using arguments
/*
output "vm-instance-id" {
  description = "VM instance ID"
  value       = google_compute_instance.myapp1.instance_id
}

output "vm-external-ip" {
  description = "VM External IP"
  value       = google_compute_instance.myapp1.network_interface.0.access_config.0.nat_ip
}

#using Attributes
output "vm-machine-type" {
  description = "VM Machine type"
  value       = google_compute_instance.myapp1.machine_type
}
output "vm-name" {
  description = "VM Name"
  value       = google_compute_instance.myapp1.name

}

output "vm-self-link" {
  description = "VM Name"
  value       = google_compute_instance.myapp1.self_link
}
*/
#for loop with list
output "vm-count" {
  description = "for loop with list"
  value       = [for instance in google_compute_instance.myapp1 : instance.name]

}

#for loop with Map
output "for_output_map1" {
  description = "instance ID"
  value       = { for instance in google_compute_instance.myapp1 : instance.name => instance.instance_id }
}
