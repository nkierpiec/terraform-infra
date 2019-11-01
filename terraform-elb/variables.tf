variable "instances" {
  type = list(string)
}

variable "security_groups" {
  type = list(string)
}

variable "subnets" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}
