output "ydb_database_id" {
  description = "ID of the YDB serverless database."
  value       = module.database.ydb_database_id
}

output "bucket_name" {
  description = "Name of the object storage bucket."
  value       = module.storage.bucket_name
}

output "bucket_access_key" {
  description = "Access key for the object storage bucket."
  value       = module.storage.bucket_access_key
}

output "network_id" {
  description = "ID of the created VPC network."
  value       = module.network.network_id
}

output "subnet_id" {
  description = "ID of the created subnet."
  value       = module.network.subnet_id
}
