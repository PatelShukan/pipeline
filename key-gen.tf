resource "aws_key_pair" "automation" {
  key_name   = "automation"
  public_key = file("~/.ssh/automation.pub")

}