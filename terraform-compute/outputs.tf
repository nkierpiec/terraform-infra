output "ids" {
  value = aws_instance.app_node.*.id
}

output "private_ips" {
  value = aws_instance.app_node.*.private_ip
}
