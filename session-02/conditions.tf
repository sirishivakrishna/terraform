resource "aws_instance" "conditions" {
  ami = var.ami-id
  instance_type = var.instance_name == "mongodb" ? "t3.medium" : "t2.micro"
}