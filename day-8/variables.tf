variable "environment" {
    type = string
    description = "the environment type"
    default = "dev"
}
variable "region" {
    type = string
    description = "the aws region"
    default = "us-east-2"
}
variable "ami-id" {
  type = string
  description = "ami ID of the instance"
  default = "ami-0741dc526e1106ae5"
}

variable "instance_type" {
    type = string
    description = "the ec2 instance type"
    default = "t3.small"
}

variable "instance_count" {
  type = number
  description = "how many instances we want to deploy"
  default = 1
  
}

variable "storage_gb" {
  type = number
  description = "How much storage size required for instance - ebs volume"
  default = 10
}

variable "enable_monitoring" {
  type = bool
  description = "Do we want to track the server health"
  default = true
}

variable "associate_public_ip" {
  type = bool
  description = "Do we want associate public ip to ec2 instance"
  default = true
}

variable "allowed_cidr_blocks" {
  type = list(string)
  description = "List of allowed cidr blocks for security group"
  default = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
}

variable "instance_tags" {
  type = map(string)
  description = "tags to apply to ec2 instances"
  default = {
    "Environment" = "dev"
    "Project"     = "terraform-cours"
    "owner"       = "yuvaraj"
  }
}

variable "availability_zone" {
  type = set(string)
  description = "set of availability zones"
  default = [ "us-east-1", "us-east-2", "us-east-3"]
}

variable "network_config" {
  type = tuple([string, string, number])
  description = "Network configuration (VPC CIDR, subnet CIDR, port number)"
  default = ["10.0.0.0/16", "10.0.0.0/16", 80]
}

variable "server_config" {
  type = object({
    name = string
    instance_type = string
    monitoring = bool
    storage_gb = number
    backup_enabled = bool 
  })
  description = "complete server configuration object"
  default = {
    name = "web-server"
    instance_type = "t3.small"
    monitoring = true
    storage_gb = 10
    backup_enabled = false

  }
}