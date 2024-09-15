variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "azs" {
  type        = list(string)
  description = "List of availability zones"
}


variable "lb_name" {
  type    = string
  default = "my-lb"
}

variable "subnets1" {
  type = list(string)
}

variable "vpc_id1" {
  type = string
}

variable "target_group_name" {
  type    = string
  default = "app-tg"
}



variable "cluster_name" {
  type    = string
  default = "my-eks-cluster"
}

variable "cluster_version" {
  type    = string
  default = "1.21"
}

variable "subnets" {
  type    = list(string)
}

variable "vpc_id" {
  type    = string
}

variable "node_group_name" {
  type = string
}

variable "node_role_arn" {
  type = string
}