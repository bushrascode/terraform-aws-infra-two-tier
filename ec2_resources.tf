// ec2 in subnet 1 
resource "aws_instance" "ec2_subnet_1" {
  ami           = "ami-0eb9d6fc9fab44d24"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.security_group_web_access.id, aws_security_group.security_group_ssh_access.id]
  key_name = aws_key_pair.key_pair.key_name
  user_data = <<-EOF
        #!/bin/bash
        sudo yum update -y
        sudo amazon-linux-extras install nginx1 -y 
        sudo systemctl enable nginx
        sudo systemctl start nginx
        EOF 
  

  tags = {
    Name = "ec2_subnet_1"
  }
}

resource "aws_instance" "ec2_subnet_2" {
  ami           = "ami-0eb9d6fc9fab44d24"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet_2.id
  vpc_security_group_ids = [aws_security_group.security_group_web_access.id, aws_security_group.security_group_ssh_access.id]
  key_name = aws_key_pair.key_pair.key_name
  user_data = <<-EOF
        #!/bin/bash
        sudo yum update -y
        sudo amazon-linux-extras install nginx1 -y 
        sudo systemctl enable nginx
        sudo systemctl start nginx
        EOF 
  

  tags = {
    Name = "ec2_subnet_2"
  }
}

resource "aws_key_pair" "key_pair" {
  key_name   = "project_key"
  public_key = file("/Users/bushrafatima/.ssh/project_key.pub")
}