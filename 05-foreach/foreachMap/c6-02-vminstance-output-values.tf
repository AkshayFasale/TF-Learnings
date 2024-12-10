
# Terraform Output Values
/* Concepts Covered
1. For Loop with List
2. For Loop with Map
3. For Loop with Map Advanced
4. Legacy Splat Operator (latest) - Returns List
5. Latest Generalized Splat Operator - Returns the List
*/

# Get each list item separately
output "for_output_list1" {
  description = "For Loop with List"
  value       = [for instance in google_compute_instance.myapp1 : instance.name]
}

# Output - For Loop with Map 
output "for_output_map1" {
  description = "For Loop with Map1"
  value       = { for instance in google_compute_instance.myapp1 : instance.name => instance.instance_id }
}

# Output - VM External IPs
output "vm_external_ips" {
  description = "VM Instance Names -> VM External IPs"
  value       = { for instance in google_compute_instance.myapp1 : instance.name => instance.network_interface.0.access_config.0.nat_ip }
}