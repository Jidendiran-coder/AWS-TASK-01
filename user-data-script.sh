# AWS Task 1: Deploy a Simple Web Page on an EC2 Instance

## Objective

Deploy a simple "Hello, World!" web page using an EC2 instance in AWS.

---

## Task Steps

### 1. Launch an EC2 Instance

- **VPC Setup**: Use a custom VPC or the default VPC.
- **Public Subnet**: Ensure the EC2 is in a public subnet with auto-assign public IP enabled.
- **Security Group**:
  - **SSH (Port 22)**: Allow access only from your IP.
  - **HTTP (Port 80)**: Allow access from anywhere (`0.0.0.0/0`).

### 2. Configure User Data Script

Use the following script to install Apache and serve a basic HTML page:

```bash
#!/bin/bash
apt update -y
apt install -y apache2
systemctl start apache2
systemctl enable apache2
echo "<h1>Hello, World!</h1>" > /var/www/html/index.html

