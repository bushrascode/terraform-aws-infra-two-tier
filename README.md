# 🗺️ Architecture Overview

![Alt text](https://cdn-images-1.medium.com/v2/resize:fit:1600/1*en9MODjNmD1aNprOn-CRLw.png)

This project demonstrates how to deploy a two-tier architecture on AWS using **Terraform**. It includes:

- A custom **VPC** with both public and private subnets
- Two **EC2 instances** deployed across public subnets
- An **Application Load Balancer** distributing traffic to the EC2s
- A private **RDS MySQL database** in private subnets
- Configured **Security Groups**, **Internet Gateway**, **Route Tables**, and more

Read more about here: https://medium.com/@bushrafatima23/how-i-deployed-a-two-tier-aws-architecture-with-terraform-a7ca8d9da9b7
