resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allowing incomming SSH connections and all outbound connections"


  ingress {
    description = "incomming ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    description = "outgoing ports"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}