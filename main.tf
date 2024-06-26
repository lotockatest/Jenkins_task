provider "aws" {
region = "eu-central-1"
}
resource "aws_security_group" "Kristina_Lotocka_Jenkins" {
name = "Kristina_Lotocka_Jenkins"
ingress {
from_port = 15955
to_port = 15955
protocol = "tcp"
cidr_blocks = ["78.84.177.217/32"]
}
egress {
from_port= 15955
to_port = 15955
protocol = "tcp"
cidr_blocks = ["78.84.177.217/32"]
}
egress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
egress {
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
}
resource "aws_instance" "Kristina_Lotocka_Jenkins" {
ami = "ami-09c45fa5f05ffe37a"
instance_type = "t2.micro"
key_name = "test"
iam_instance_profile = "role-d4ml-cloud9-deployment"
vpc_security_group_ids = [aws_security_group.Kristina_Lotocka_Jenkins.id]
tags = {
Name = "KristinaL_Jenkins"
}
}
