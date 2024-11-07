data "aws_ami" "ami" {
  most_recent = true
  name-regex = "RHEL-9-DevOps-Practice"
  owner = ["973714476881"]
  }