locals {
  owners      = var.Business_division
  environment = var.environment
  name        = "${var.Business_division}-${var.environment}"
  #name = "${locals.owners}=${locals.environment}"

  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
}
