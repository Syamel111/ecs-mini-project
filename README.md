# ECS Mini Project: Frontend & Backend on Fargate

This repository contains a production-ready AWS ECS Fargate mini-project, showcasing a two-tier application (frontend + backend) with full observability, IAM least privilege, and monitoring. The project was completed as part of a hands-on learning program for cloud DevOps proficiency.

---

## 🌐 Overview

- **Frontend:** NGINX container serving static content  
- **Backend:** Python/Node.js API container  
- **Infrastructure as Code:** Managed entirely via Terraform  
- **Cloud Observability:** CloudWatch logging, CPU alarms, IAM least privilege  
- **Deployment Strategy:** ECS Fargate + Application Load Balancer (ALB)

---

## 📁 Project Structure

```

terraform/
├─ main.tf                # Provider and VPC configuration
├─ vpc.tf                 # Reuse of VPC from Part 1
├─ ecs-cluster.tf         # ECS cluster setup
├─ frontend-task.tf       # Frontend task definition
├─ backend-task.tf        # Backend task definition
├─ frontend-service.tf    # Frontend ECS service
├─ backend-service.tf     # Backend ECS service
├─ ecr.tf                 # ECR repositories (force\_delete optional)
├─ terraform.tfvars       # Variables (VPC ID, subnets)
├─ outputs.tf             # Repository URLs & service info
└─ .gitignore             # Ignore sensitive files and Terraform state

````

---

## 🚀 Part 1 – ECS Frontend & Backend Setup

- Created ECS cluster and services using Terraform  
- Configured frontend (NGINX) and backend (API) containers  
- Exposed services through an Application Load Balancer (ALB)  
- Verified connectivity via `curl` and browser  
- Infrastructure tested and confirmed healthy

**Key Learning Points:**

- Terraform ECS scaffold and task definitions  
- ALB integration with ECS Fargate  
- Basic container port mapping and service health checks  

---

## 🚀 Part 2 – Monitoring, IAM Least Privilege & Logging

- Enabled CloudWatch logging for both ECS tasks  
- Implemented IAM execution roles with least privilege  
- Created CPU alarms for frontend and backend tasks  
- Verified logs streaming in `/ecs/mp7` log groups  
- Tweaked ports and services to match task definitions  
- Optional enhancements considered: memory alarms, failed task alarms, SNS notifications

**Key Learning Points:**

- ECS logging and CloudWatch metrics  
- IAM role scoping for task execution  
- Terraform best practices for monitoring and observability  
- Handling ECS task errors (port mapping, resource references)  

---

## ⚡ Notes / Tips

- **ECR Repositories:** Skipped deletion if not empty. Use `force_delete = true` to automatically remove images.  
- **Terraform Destroy:** Safe to destroy Part 2 resources; leave Part 1 intact if needed.  
- **GitHub:** `.gitignore` prevents committing state files or secrets.

---

## 🛠 Technology Stack

* **AWS Services:** ECS Fargate, ECR, ALB, CloudWatch, IAM
* **IaC:** Terraform
* **Containerization:** Docker (NGINX + API container)

---

## 📚 Learning Outcomes

* Hands-on experience with ECS Fargate and multi-container deployments
* Setting up observability with CloudWatch logs and alarms
* Enforcing IAM least privilege for tasks
* Debugging ECS deployment issues (ports, ALB, IAM)
* Managing Terraform state, `.tfvars`, and `.gitignore` best practices

---

**Author:** Syamel111
