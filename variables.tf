variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "test"
}

variable "environment" {
  default = "dev"
}

variable "team" {
  default = "devops"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "./ssh-key.pub"
}


variable "key_pair" {
  description = "Name of keypair to be configure"
  default = ""
}