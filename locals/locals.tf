locals {
  ami_id = "ami-03265a0778a880afb"
  #file function for public key
  public_key = file("${path.module}/devops.pub") 
  instance_type = var.isPROD ? "t3.medium" : "t2.micro"
}