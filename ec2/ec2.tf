resource "aws_instance" "roboshop" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  #vpc_security_group_ids = [aws_security_group.allow_all.id]
  vpc_security_group_ids = local.sg_id
  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  #name        = "allow_all_change
  description = "Allow all traffic"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-all"
  }

#Session-49
  /* lifecycle {
      create_before_destroy = true
      #1.it will create another resource and 
      #2.replace in instance with new sg
      #3.then remove old sg
    }  */ 
}