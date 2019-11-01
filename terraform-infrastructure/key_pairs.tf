resource "aws_key_pair" "aws_root_user" {
  key_name   = "aws_root_user"
  public_key = var.public_key
}
