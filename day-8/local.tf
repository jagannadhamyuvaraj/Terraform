locals {
  common_tags = {
    Environment = var.environment
    managedBy = "Terraform"
    LOB = "Engineering"
    Stage = "Alpha"
    CreateDate = formatdate("YYYY-MM-DD", timestamp())
  } 

  vpc_cidr = element(var.network_config, 0)
  subnet_cidr = "${element(var.network_config, 1)}/${element(var.network_config, 2)}"
  instance_name = "${var.environment}-instance"

  port_description = {
    22 = "SSH"
    80 = "HTTP"
    443 = "HTTPS"
  }
}
