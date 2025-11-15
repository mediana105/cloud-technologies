output "bucket_name" {
  description = "Name of the created object storage bucket."
  value       = yandex_storage_bucket.this.bucket
}

output "bucket_access_key" {
  description = "Access key for the object storage bucket."
  value       = yandex_storage_bucket.this.access_key
}

output "bucket_secret_key" {
  description = "Secret key for the object storage bucket."
  value       = yandex_storage_bucket.this.secret_key
  sensitive   = true
}
