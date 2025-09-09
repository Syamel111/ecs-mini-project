# ==========================
# ECR Repositories
# ==========================

resource "aws_ecr_repository" "frontend_repo" {
  name = "frontend-repo"
  force_delete = true

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Project = "ecs-mini-project"
    Tier    = "frontend"
  }
}

resource "aws_ecr_repository" "backend_repo" {
  name = "backend-repo"
  force_delete = true

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Project = "ecs-mini-project"
    Tier    = "backend"
  }
}

# Outputs for convenience
output "frontend_repo_url" {
  value = aws_ecr_repository.frontend_repo.repository_url
}

output "backend_repo_url" {
  value = aws_ecr_repository.backend_repo.repository_url
}
