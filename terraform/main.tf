resource "aws_instance" "public_server" {
 ami                       = "ami-0819a8650d771b8be"
 instance_type             = "t3.micro"

 tags = {
   Name = "Public Server",
 }
}
