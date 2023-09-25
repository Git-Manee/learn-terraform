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