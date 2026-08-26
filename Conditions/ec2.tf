resource "aws_instance" "terraform" {
  ami = "ami-0220d79f3f480ecf5"
  count = 4
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.medium"


  tags = {
    Name = var.instances [count.index]
    Terraform = "True"
  }
}

resource "aws_security_group" "allow_all_s" {
  name        = "allow_all_s"

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
     Name = "allow-all_s"
    }
}
