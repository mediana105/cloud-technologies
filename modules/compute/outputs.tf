output "instance_id" {
  description = "ID of the created compute instance."
  value       = yandex_compute_instance.this.id
}

output "instance_name" {
  description = "Name of the created compute instance."
  value       = yandex_compute_instance.this.name
}
