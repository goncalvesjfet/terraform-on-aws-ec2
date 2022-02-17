module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "2.14.1"

  bucket = "${local.owners}-s3-${local.environment}-7777"
  acl           = "private"
  force_destroy = true

  tags = {
    Owner = "Prod"
  }

  versioning = {
    enabled = false
  }
}
