resource "aws_instance" "roboshop" {
  for_each = var.instance
  ami = var.ami_id
  instance_type = each.value
  tags = {
    value = each.key
  }
}
# output "aws_instance_info" {
#   value = aws_instance.roboshop
# }

#if web server give public ip or else private ip
resource "aws_route53_record" "www" {
  for_each = aws_instance.roboshop
  zone_id = var.zone_id
  name = "${each.key}.${var.domain}"
  type = "A"
  ttl = 1
  records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ] 
}
output "aws_instance_info" {
  value = aws_instance.roboshop
}