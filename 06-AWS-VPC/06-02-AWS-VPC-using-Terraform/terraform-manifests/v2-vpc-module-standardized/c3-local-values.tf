# Define Local Values in Terraform
# A local value assigns a name to an expression, so you can use the name multiple times within a module instead of repeating the expression.
locals {
  owners      = var.business_divsion
  environment = var.environment
  name        = "${var.business_divsion}-${var.environment}"
  #name = "${local.owners}-${local.environment}"
  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
}
