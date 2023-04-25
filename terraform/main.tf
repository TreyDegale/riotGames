provider "aws" {
  region  = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "flask_app_sg" {
  name = "flask_app_sg"
  vpc_id = aws_default_vpc.default.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name = "flask_app_sg"
  }
}

resource "aws_instance" "flask_app" {
  #ami                   = "ami-062f7200baf2fa504"
  ami                    = data.aws_ami.aws_linux_2_latest.id
  key_name               = "flask-app-ec2.pem"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.flask_app_sg}"]

  //subnet_id              = "subnet-3f7b2563"
  subnet_id = data.aws_subnets.default_subnets.ids[0]

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file(var.aws_key_pair)
  }

#   provisioner "remote-exec" {
#     inline = [
#       "sudo yum install httpd -y",
#       "sudo service httpd start",
#       "echo Welcome to in28minutes - Virtual Server is at ${self.public_dns} | sudo tee /var/www/html/index.html"
#     ]
#   }
}