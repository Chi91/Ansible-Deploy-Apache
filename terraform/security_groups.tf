resource "aws_security_group" "chi-sg" {
  name = "chi-sg"
  tags = {
    Name = "chi-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.chi-sg.id
  to_port           = 22
  from_port         = 22
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.chi-sg.id
  to_port           = 80
  from_port         = 80
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "allow_egress" {
  security_group_id = aws_security_group.chi-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"

}
