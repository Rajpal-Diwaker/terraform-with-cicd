output "instance_name" {
  value       = local.instance_name
  description = "Name of GCE VM Instance."
}

output "id" {
  value       = google_compute_instance.gce.id
  description = "An identifier for the resource with format projects/{{project}}/zones/{{zone}}/instances/{{name}}"
}

output "instance_id" {
  value       = google_compute_instance.gce.instance_id
  description = "The server-assigned unique identifier of this instance. Example: 4567719474035761998"
}

