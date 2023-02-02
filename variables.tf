variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "example"
}

variable "environment" {
  default = "qa"
}

variable "team" {
  default = "qa"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "./ssh-key.pub"
}


variable "key_pair" {
  description = "Name of keypair to be configure"
  default = ""
}
