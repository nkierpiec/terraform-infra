resource "aws_instance" "app_node" {
  ami                         = var.ami
  associate_public_ip_address = var.has_public_ip
  count                       = var.instance_count
  instance_type               = var.instance_type
  key_name                    = "aws_root_user"
  subnet_id                   = var.subnet_id
  tags                        = var.tags
  vpc_security_group_ids      = var.security_groups
}
