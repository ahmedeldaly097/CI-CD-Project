variable "region" {
  type    = string 
  default = "us-east-1"
}

variable "ami" {
  type    = string 
  default = "ami-0574da719dca65348"
}

variable "public_key" {
  description = "ssh public key"
}