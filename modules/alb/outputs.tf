# modules/alb/outputs.tf
output "alb_dns_name" {
  value = aws_lb.main.dns_name
}