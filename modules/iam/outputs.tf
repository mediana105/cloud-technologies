output "service_account_id" {
  description = "ID of the IAM service account created for accessing object storage."
  value       = yandex_iam_service_account.bucket.id
}

output "access_key" {
  description = "Static access key of the IAM service account for object storage."
  value       = yandex_iam_service_account_static_access_key.this.access_key
}

output "secret_key" {
  description = "Secret key corresponding to the static access key for object storage."
  value       = yandex_iam_service_account_static_access_key.this.secret_key
}
