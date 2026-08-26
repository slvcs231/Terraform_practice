resource "aws_instance" "terraform" {
  count = 3
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  tags = {
    Name = var.instances [count.index]
    Terraform = "True"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  tags = {
     Name = "allow-all"
    }

}
