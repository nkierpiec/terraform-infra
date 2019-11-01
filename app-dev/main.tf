# Ubuntu Server 18.04 LTS (HVM) 
# (N. California)

module "infrastructure" {
  access_key         = var.access_key
  ami                = "ami-06397100adf427136"
  bastion_private_ip = module.bastion.private_ips[0]
  public_key         = var.public_key
  secret_key         = var.secret_key
  source             = "../terraform-infrastructure"
  vpc_subnet         = "subnet-01228fdeb3178d80b"
  vpc_id             = "vpc-072bedda9f584bb34"
}

module "bastion" {
  ami             = "ami-06397100adf427136"
  has_public_ip   = true
  instance_count  = "1"
  instance_type   = "t2.micro"
  security_groups = [module.infrastructure.ext_http_sg]
  source          = "../terraform-compute"
  subnet_id       = "subnet-01228fdeb3178d80b"
  tags = {
    Name = "app_node"
  }
}

module "compute" {
  ami             = "ami-06397100adf427136"
  has_public_ip   = true
  instance_count  = "5"
  instance_type   = "t2.micro"
  security_groups = [module.infrastructure.int_http_sg, module.infrastructure.int_ssh_sg]
  source          = "../terraform-compute"
  subnet_id       = "subnet-01228fdeb3178d80b"
  tags = {
    Name = "app_node"
  }
}

module "elb" {
  security_groups = [module.infrastructure.ext_http_sg, module.infrastructure.int_http_sg]
  instances       = module.compute.ids
  subnets         = ["subnet-01228fdeb3178d80b"]
  source          = "../terraform-elb"
  tags = {
    Name = "app_elb"
  }
}
