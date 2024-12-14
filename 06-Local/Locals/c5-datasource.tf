# Terraform Datasources
/* Datasource: Get a list of Google 
Compute zones that are UP in a region */
data "google_compute_zones" "available" {
  status = "UP"
}

# Output value
output "compute_zones" {
  description = "List of compute zones"
  value       = data.google_compute_zones.available.names
}
data "google_compute_image" "debian" {
  family  = "debian-12"
  project = "debian-cloud"
}

output "id" {
  value = data.google_compute_image.debian.id
}
output "self_link" {
  value = data.google_compute_image.debian.self_link
}
output "name" {
  value = data.google_compute_image.debian.name
}
output "family" {
  value = data.google_compute_image.debian.family
}
output "image_id" {
  value = data.google_compute_image.debian.image_id
}
output "status" {
  value = data.google_compute_image.debian.status
}
output "liscense" {
  value = data.google_compute_image.debian.licenses
}
output "description" {
  value = data.google_compute_image.debian.description
}
output "project" {
  value = data.google_compute_image.debian.project
}
output "source_image_id" {
  value = data.google_compute_image.debian.source_image_id
}

# using MAP Key Value pair we can make code small for same output.
output "vm-image-info" {
  value = {
    project         = data.google_compute_image.debian.project
    source_image_id = data.google_compute_image.debian.source_image_id
  }

}