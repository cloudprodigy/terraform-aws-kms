output "kms_key_arn" {
  value       = aws_kms_key.default.arn
  description = "KMS key ARN"
}