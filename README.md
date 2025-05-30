# appointment-service
Appointment-service

Please find a link to architecture diagram: https://www.imghippo.com/i/GVLO5933qI.png


# 🚀 Microservices Deployment on AWS EKS

This project sets up a complete infrastructure on AWS to deploy containerized microservices using:

- **Terraform** (Infrastructure as Code)
- **Docker** (Containerization)
- **Amazon EKS** (Kubernetes)
- **GitHub Actions** (CI/CD)
- **CloudWatch** (Logging)

---

## 🔧 What It Does

- Creates a VPC with public/private subnets
- Sets up an EKS cluster
- Builds and pushes Docker images to ECR
- Deploys apps to Kubernetes
- Automates everything using GitHub Actions
- Enables monitoring via CloudWatch (Prometheus optional)

---



---

## ✅ Setup Steps

### 1. Install Tools

- Terraform
- AWS CLI
- kubectl
- Docker

### 2. Terraform Infra

```bash
terraform init
terraform plan
terraform apply
3. Build & Push Docker Image
bash
Copy
Edit
docker build -t <your-app> .
docker tag <your-app> <ecr-url>
docker push <ecr-url>
4. Deploy to EKS
bash
Copy
Edit
aws eks --region <region> update-kubeconfig --name <cluster>
kubectl apply -f manifests/
5. CI/CD (GitHub Actions)
terraform.yml – Infra automation

docker.yml – Build & push image

deploy.yml – Deploy to EKS

📊 Monitoring
Logs: AWS CloudWatch

Optional: Prometheus + Grafana via Helm

🧑‍💻 Author
Made by Mythreya – Happy to help with infra and DevOps!
