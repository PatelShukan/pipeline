resource "aws_instance" "first_instance" {
  ami                    = "${var.image_id}"
  instance_type          = "${var.instance_type}"
  key_name               = aws_key_pair.automation.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  tags = {
    Name = "first_instance"
  }
}