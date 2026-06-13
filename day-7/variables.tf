variable "region" {
  type = string
  default = "us-east-2"
}

variable "instance_type" {
  type = string
  default = "t3.small"
}

variable "ami" {
  type = string
  default = "ami-0741dc526e1106ae5"
}

variable "env" {
  type = string
  default = "Dev"
}

variable "cidr_block" {
  description = " CIDR block for the VPC"
  type = list(string)
  default = ["10.0.0.0/8","192.168.0.0/16","172.162.0.0/12"]
}

variable "instances_type" {
  description = "select the list of instance types from the list"
  type = list(string)
  default = ["t2.micro","t3.small","t2.medium"]
}

variable "regions" {
  description = "select the region from this wide range of region you want to deploy"
  type = set(string)
  default = ["us-east-3","us-west-2","us-east-1"]
}

variable "tags" {
  type = map(string)
  default = {
    
  }
}