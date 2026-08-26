resource "aws_instance" "terraform" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
    Terraform = "True"
  }
}

resource "aws_security_group" "allow_all_remote" {
  name        = "allow_all_remote"

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
     Name = "allow_all_remote"
    }

}
