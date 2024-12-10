# checking available UP zones in region
data "google_compute_zones" "available" {
  status  = "UP"
  project = "terraform-practice-436907"
}

# calling zone names 
output "compute_zones" {
  description = "List of compute zones"
  value       = data.google_compute_zones.available.names
}
