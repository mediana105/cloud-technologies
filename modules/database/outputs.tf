output "ydb_database_id" {
  description = "ID of the created YDB serverless database."
  value       = yandex_ydb_database_serverless.this.id
}
