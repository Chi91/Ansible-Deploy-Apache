resource "aws_instance" "ec2" {
  ami                    = var.ami-image-name
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.chi-sg.id]

  key_name = "chi_deploy_alone_apache"

  tags = {
    Name = "chi_server_alone_Webserver"
  }
}

output "ec2_ip_addr" {
  value = aws_instance.ec2.public_ip
}

