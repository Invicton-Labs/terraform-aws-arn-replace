data "aws_arn" "arn" {
  arn = var.arn
}

locals {
  output_arn = "arn:${var.partition != null ? var.partition : data.aws_arn.arn.partition}:${var.service != null ? var.service : data.aws_arn.arn.service}:${var.region != null ? var.region : data.aws_arn.arn.region}:${var.account != null ? var.account : data.aws_arn.arn.account}:${var.resource != null ? var.resource : data.aws_arn.arn.resource}"
}
