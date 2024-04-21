# resource "tls_private_key" "generated" {
#   algorithm = "RSA"
# }

# resource "local_file" "private_key_pem" {
#   content  = tls_private_key.generated.private_key_pem
#   filename = "MyAWSKey.pem"
# }
provider "aws" {
  region     = "us-east-1" #east
  access_key = "AKIA3ZHK5HL2KX7IF5FE"
  secret_key = "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"
}
# resource "aws_instance" "aws_linux" {
#   ami           = "ami-0b660115243d1c4b6"
#   instance_type = "t2.micro"
# }
module "server" {
  source    = "./server"
#   ami       = data.aws_ami.ubuntu.id
#   subnet_id = aws_subnet.public_subnets["public_subnet_3"].id
#   security_groups = [
#     aws_security_group.vpc-ping.id,
#     aws_security_group.ingress-ssh.id,
#     aws_security_group.vpc-web.id
#   ]
}
# terraform {
#  backend "remote" {
#     hostname = "app.terraform.io"
#     organization = "terraform-lab"

#     workspaces {
#       name = "terraform-lab"
#     }
#   }
# }
