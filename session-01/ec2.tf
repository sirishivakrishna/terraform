resource "aws_instance" "MYwish" {
  ami = var.ami-id
  instance_type = var.instance_type
  security_groups = [aws_security_group.allow_all_1.name]

# tags = {
#   Name = "mongodb"
#   Environment = "DEV"
#   component = "mongodb"
#   project = "roboshop"
#   terraform = "true"
# }

tags = var.tags
}