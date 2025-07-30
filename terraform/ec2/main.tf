terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.5.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

# Launch EC2 using existing resources
resource "aws_instance" "windows_web" {
  ami                         = var.ami_id
  instance_type               = "t3.small"
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  associate_public_ip_address = true
  key_name                    = var.key_name

  user_data = <<-EOF
              <powershell>
              Install-WindowsFeature -name Web-Server -IncludeManagementTools
              Set-Content -Path "C:\\inetpub\\wwwroot\\index.html" -Value "<h1>This is sample app from Windows EC2 created by Terraform</h1>"
              Restart-Service W3SVC
              </powershell>
              EOF

  tags = {
    Name = "Web-application"
  }
}

