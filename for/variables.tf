variable "ami_id" {
   type = string
   default = "ami-03265a0778a880afb"
}

variable "instance" {
  type = map
  default = {
    mongodb = "t3.medium",
    mysql = "t3.medium",
    catalog = "t2.micro",
    cart = "t2.micro",
    user = "t2.micro",
    rabbitmq = "t2.micro",
    payment = "t2.micro",
    shipping = "t2.micro",
    redies = "t2.micro",
    web = "t2.micro",
  }
}

variable "zone_id" {
  default = "Z09774772FLVAKY15QHS"
}

variable "domain" {
  default = "varahiforms.online"
}
variable "ingress" {
  type = list
  default = [
    {
        from_port = 80
        to_port = 80
        description = "Allowing port 80 from public"
        protocol = "HTTP"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 443
        to_port = 443
        description = "Allowing port 443 from public"
        protocol = "HTTPS"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 22
        to_port = 22
        description = "Allowing port 22 from public"
        protocol = "SSH"
        cidr_blocks = ["0.0.0.0/0"]
    }
  ]
  
}