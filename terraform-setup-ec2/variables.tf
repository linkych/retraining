variable "ami" {
   type        = string
   description = "Amazon Linux 2 AMI in us-east-1 Region"
   default     = "ami-0aa7d40eeae50c9a9"
}
variable "instance_type" {
   type        = string
   description = "Instance type"
   default     = "t2.micro"
}

variable "name_tag" {
   type        = string
   description = "Name of the EC2 instance"
   default     = "Retraining"
}

output "public_ip" {
 value       = aws_instance.oms.public_ip
 description = "Public IP Address of EC2 instance"
}

output "instance_id" {
 value       = aws_instance.oms.id
 description = "Instance ID"
}
