# Input Variables
# GCP Project
variable "gcp_project" {
  description = "Project in which GCP Resources to be created"
  type        = string
  default     = "terraform-practice-436907"
}

# GCP Region
variable "gcp_region1" {
  description = "Region in which GCP Resources to be created"
  type        = string
  default     = "us-east1"
}

# GCP Compute Engine Machine Type
variable "machine_type" {
  description = "Compute Engine Machine Type"
  type        = string
  default     = "e2-small"
}

variable "zone_machine-map" {
  type = map(string)
  default = {
    "us-central1-a" = "e2-micro" # key value
    "us-central1-b" = "e2-small"
    "us-central1-c" = "e2-medium"

  }
}
