provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("${path.module}/../prometheus/ec2_node_exporter_setup.sh")

  tags = {
    Name = "MonitoredEC2"
  }
}

resource "aws_s3_bucket" "tf_state" {
  bucket = var.state_bucket
  acl    = "private"
}