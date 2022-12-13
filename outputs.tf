output "id" {
  description = "The ID of EIP"
  value       = element(concat(aws_eip.eip.*.allocation_id, [""]), 0)
}
output "public_ip" {
  description = "public IP"
  value       = element(concat(aws_eip.eip.*.public_ip, [""]), 0)
}