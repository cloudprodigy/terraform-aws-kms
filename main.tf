resource "aws_kms_key" "default" {
  description             = "${var.project}-${var.environment}-key-${var.service}"
  deletion_window_in_days = 10
  enable_key_rotation     = true
  tags                    = local.common_tags
}

resource "aws_kms_alias" "default" {
  name          = "alias/${var.project}-${var.environment}-key-${var.service}"
  target_key_id = aws_kms_key.default.key_id
}
