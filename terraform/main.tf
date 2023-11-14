resource "aws_instance" "ubuntu-instance" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = "mykey"
  security_groups = ["${aws_security_group.ubuntu-sg.name}"]
  user_data       = <<-EOF
                    #!/bin/bash
                    sudo hostnamectl hostname demo-ec2
                    EOF

  tags = {
    Name = "Ubuntu-EC2"
  }
}