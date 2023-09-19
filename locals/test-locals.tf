# resource "aws_instance" "conditions" {
#   count = 10
#   ami = local.ami_id
#   #this condition for instance type for (mongodb,mysql)
#   instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql" ? "t3.medium" : "t2.micro"
#   tags = {
#     Name = var.instance_name[count.index]
#   }
# }

# resource "aws_route53_record" "record" {
#   count = 10
#   zone_id = var.zone_id
#   name    = "${var.instance_name[count.index]}.${var.domain}"  #interpolation
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.conditions[count.index].private_ip]
# }
resource "aws_key_pair" "deployer" {
  key_name   = "devops1"
  public_key = local.public_key
}

resource "aws_instance" "key" {
  ami = local.ami_id
  #this condition for instance type for (mongodb,mysql)
  instance_type = local.instance_type
  key_name = aws_key_pair.deployer.key_name
}