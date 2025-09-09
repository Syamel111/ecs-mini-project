variable "vpc_id" {}
variable "public_subnet_ids" {
  type = list(string)
}
variable "ecs_cluster_name" {
  default = "mp7-ecs-cluster"
}
variable "frontend_image" {
  default = "nginx:latest"
}
variable "backend_image" {
  default = "public.ecr.aws/nginx/nginx:latest"
}
variable "log_group_name" {
  default = "/ecs/mp7"
}

