resource "aws_instance" "linux" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-035143f391bb55883"]
    #After Import give here your account security group
  tags = {
    Name = "linux-change"
  }
}

# Empty resource while import we need to enable this & disable above
/* resource "aws_instance" "linux" {
 
} */

