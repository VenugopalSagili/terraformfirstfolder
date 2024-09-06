resource "aws_instance" "tf_instant_one" {
  ami = var.imagename
  #ami = "ami-0d857ff0f5f]4e03b"
  #ami = "${data.aws_ami.my_ami.id}"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "DevOps_Key_pair"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Pipline-Test-Server-1"
    Env        = var.environment
    Owner      = "Venugopal"
    CostCenter = "ABCD"
  }
}
