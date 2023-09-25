resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-01db159cc63f34995"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z06195201DS9N630KC87K"
  name    = "frontend.mkdevops.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.frontend.private_ip ] #need to provide the ip address
}
########
resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-01db159cc63f34995"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z06195201DS9N630KC87K"
  name    = "mysql.mkdevops.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.mysql.private_ip ] #need to provide the ip address
}
########
resource "aws_instance" "backend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-01db159cc63f34995"]

  tags = {
    Name = "backend"
  }
}

resource "aws_route53_record" "backend" {
  zone_id = "Z06195201DS9N630KC87K"
  name    = "backend.mkdevops.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.backend.private_ip ] #need to provide the ip address
}