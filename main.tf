data "aws_key_pair" "terraform_key" {
  key_name = "terraform_key"
}

resource "aws_instance" "web" {
  ami           = var.ami[count.index]
  instance_type = "t2.micro"
  count         = length(var.ami)
  key_name      = "terraform_key"
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "webserver"
  }
}