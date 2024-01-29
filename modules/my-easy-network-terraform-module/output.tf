output "vpc" {
  value = {
    vpc_id     = aws_vpc.main.id
    cidr_block = aws_vpc.main.cidr_block
  }
  description = "vpc object"
}

output "public_subnet_ids" {
  value       = [for k, v in aws_subnet.public : v.id]
  description = "public subnet ids"
}

output "private_subnet_ids" {
  value       = [for k, v in aws_subnet.private : v.id]
  description = "private subnet ids"
}

output "private_route_table_id" {
  value       = aws_route_table.private.id
  description = "private route table id"
}
