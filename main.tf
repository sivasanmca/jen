provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "web" {
  ami  = "ami-0dd9f0e7df0f0a138"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.keypair.key_name}"

  tags = {
    Name = "Terraform01"  
     }
}
resource "aws_key_pair" "keypair"{
  key_name = "samplekey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGwNnWqrmRfrW+K9tdIcl2jxe3629W35jH5+/qHkGmi0DpTsn3d9rulaUyMVSUvN4o5JJeFIQ/8SDueY+WCgsn0Rwk/e8XjYX26VX3RTfa6RtBUjJKRwptYNZMnifpVKodm7ugY2bwKOSlI7fJfoe0CW4BUBSEZ32M2Ht1xsbPfEDjx1qNwj77bTYC/sJhQGM5bqiUcsR0so7Xly89d2PmO1QiVgNCMl6xNuZ1B5FKGtFpawcUFIrnFKXKOsjF/NAqwKwRunzGRkEMUGr0GxHEPKyGrOa1GyAKEtEcgFdQTv1V6AZ23CPu5G7Y2xhGmKDMJDoLqrJNMiroA1OA68GZ root@ip-172-31-46-114 "
}
