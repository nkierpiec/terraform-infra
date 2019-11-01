output "ext_ssh_sg" {
  value = aws_security_group.ext_ssh.id
}

output "ext_http_sg" {
  value = aws_security_group.ext_http.id
}

output "int_http_sg" {
  value = aws_security_group.int_http.id
}

output "int_ssh_sg" {
  value = aws_security_group.int_ssh.id
}
