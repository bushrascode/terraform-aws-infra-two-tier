// ec2 in subnet 1 
resource "aws_instance" "ec2_subnet_1" {
  ami           = "ami-0eb9d6fc9fab44d24"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet_1.id
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

