variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "Ubuntu AMI"
  default     = "ami-0c02fb55956c7d316"  # Ubuntu 20.04 LTS for us-east-1
}

variable "key_name" {
  description = "EC2 SSH key pair name"
}

variable "state_bucket" {
  description = "S3 bucket for Terraform state"
}