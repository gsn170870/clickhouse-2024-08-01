variable "clickhouse_password" {
  sensitive   = true
  type        = string
  description = "Clickhouse admin password"
}

output "clickhouse_host_fqdn" {
  value = resource.yandex_mdb_clickhouse_cluster.clickhouse-dev.host[0].fqdn
}