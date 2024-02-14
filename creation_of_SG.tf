provider "aws"  {
   region = "ap-south-1"
   access_key = "****************"
   secret_key = "****************"

}



resource "aws_security_group" "sg_1" {
  name = "sg_1"
  vpc_id = "vpc-03f86727517041f74"

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = var.cidr_block
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.cidr_block
  }
}


