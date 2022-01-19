

resource "aws_instance" "saba-instance" {
  count                  = 1
  ami                    = "ami-0af25d0df86db00c1"
  instance_type          = "t3.micro"
  availability_zone      = "ap-south-1c"
  key_name               = "poc-mumbai"
  vpc_security_group_ids = ["sg-028fbd4f0e4e9a6b9"]
  subnet_id              = "subnet-0c44b7cc1099a539b"
  tags = {
    Name = "app-${count.index + 1}"
  }
}

