provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "Wordpress_VM" {
  ami                    = "ami-04505e74c0741db8d"
  instance_type          = "t2.micro"
  key_name               = "Free-aws-sshkey"
  vpc_security_group_ids = ["sg-02ad7b710b87ffc11"]
  subnet_id              = "subnet-0ee3b59cbd1f54e84"
  private_ip             = "172.31.16.100"
  user_data              = file("userdata.sh")
  tags = {
    name = "Wordpress_VM"
  }
}

resource "aws_instance" "HAProxy_VM" {
  ami                    = "ami-04505e74c0741db8d"
  instance_type          = "t2.micro"
  key_name               = "Free-aws-sshkey"
  vpc_security_group_ids = ["sg-02ad7b710b87ffc11"]
  user_data              = file("userdata-1.sh")
  tags = {
    name = "HAproxy_VM"
  }
}
