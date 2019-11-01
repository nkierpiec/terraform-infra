variable "ami" {
  type = string
}

variable "has_public_ip" {
  type = bool
}

variable "instance_count" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

variable "subnet_id" {
  type = string
}

variable "tags" {
  type = map(string)
}
