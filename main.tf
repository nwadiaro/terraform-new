resource "aws_instance" "web" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  count         = 3

  tags = {
    Name = "webserver"
  }
}