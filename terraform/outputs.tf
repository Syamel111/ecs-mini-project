output "backend_tg_arn" {
  value = aws_lb_target_group.backend_tg.arn
}

output "frontend_tg_arn" {
  value = aws_lb_target_group.frontend_tg.arn
}
