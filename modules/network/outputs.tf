output "network_id" {
  description = "ID of created VPC network"
  value       = yandex_vpc_network.private.id
}

output "subnet_id" {
  description = "ID of subnet created in the module"
  value       = yandex_vpc_subnet.this.id
}
