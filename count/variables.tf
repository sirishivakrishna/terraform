variable "instance_name" {
  type = list
  default = ["mongodb","cart","catalog","user","redies","mysql","rabbitmq","payment","shipping","web"]
}

variable "ami_id" {
   type = string
   default = "ami-03265a0778a880afb"
}

variable "zone_id" {
  default = "Z09774772FLVAKY15QHS"
}

variable "domain" {
   default = "varahaifarms.online"
}