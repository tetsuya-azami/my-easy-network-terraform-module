output "vpc_id" {
  value       = aws_vpc.main.id
  description = "vpc id"
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
