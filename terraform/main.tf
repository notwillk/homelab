resource "aws_instance" "my_vm" {
 ami                       = "ami-076ce4c214a7e0764"
 instance_type             = "t3a.micro"

 tags = {
   Name = "Public Server",
 }
}
