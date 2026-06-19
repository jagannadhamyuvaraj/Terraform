resource "aws_instance" "web_server" {
  ami = var.ami-id
  instance_type = var.instance_type
  count = 1
  monitoring = var.enable_monitoring
  associate_public_ip_address = var.associate_public_ip
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  tags = var.instance_tags

  root_block_device {
    volume_size = var.storage_gb
    volume_type = "gp3"
  }
}

resource "aws_security_group" "web_sg" {
  name = "${var.server_config.name}-sg"
  description = "security group for web server"

  ingress {
    from_port = var.network_config[2]
    to_port = var.network_config[2]
    protocol = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
   from_port = 0
   to_port = 0
   protocol = "-1"
   cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.instance_tags
}