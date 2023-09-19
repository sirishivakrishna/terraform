resource "aws_security_group" "allow_all_1" {
  name = var.sg_name
  description = "Allow TLS inbound traffic"
  #vpc_id      = "aws_vpc.main.id"

  ingress {
    description      = "Allowing all inbound from port"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr
      }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr
      }
}