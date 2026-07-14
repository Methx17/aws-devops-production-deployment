# AWS DevOps Production Deployment

## Project Overview

This project demonstrates a complete production-style DevOps deployment on AWS using Free Tier services.

The project includes:

- AWS EC2
- Docker
- GitHub Actions CI/CD
- Docker Hub
- Amazon S3
- CloudWatch Monitoring
- CloudWatch Logs
- CloudWatch Dashboard
- CloudWatch Alarm
- Load Testing using k6

---

## Architecture

Architecture Diagram

```
Developer
    │
GitHub Repository
    │
GitHub Actions
    │
Docker Hub
    │
AWS EC2
    │
Docker Container
    │
Node.js API
```

---

## Technologies Used

- AWS EC2
- AWS IAM
- AWS S3
- AWS CloudWatch
- Docker
- GitHub
- GitHub Actions
- Docker Hub
- Node.js
- Ubuntu
- k6

---

## Project Structure

```
aws-devops-production-deployment/
│
├── .github/
│   └── workflows/
│       └── deploy.yml
│
├── app/
│   ├── app.js
│   ├── Dockerfile
│   ├── package.json
│   └── package-lock.json
│
├── architecture/
│
├── docs/
│
├── k6/
│
├── load-testing/
│   └── load-test.js
│
├── screenshots/
│
├── scripts/
│   └── deploy.sh
│
└── README.md
```

---

## Prerequisites

- AWS Account
- EC2 Ubuntu Instance
- Docker Installed
- Git Installed
- GitHub Account
- Docker Hub Account
- SSH Key Pair

---

## Deployment Steps

### Clone Repository

```bash
git clone https://github.com/Methx17/aws-devops-production-deployment.git
```

---

### Build Docker Image

```bash
docker build -t node-api ./app
```

---

### Run Container

```bash
docker run -d -p 80:3000 node-api
```

---

### Configure GitHub Actions

Add the following GitHub Secrets:

- DOCKER_USERNAME
- DOCKER_PASSWORD
- EC2_HOST
- EC2_USERNAME
- EC2_SSH_KEY

---

### Push Code

```bash
git add .
git commit -m "Update"
git push origin main
```

GitHub Actions automatically:

- Builds Docker Image
- Pushes Image to Docker Hub
- Connects to EC2
- Pulls Latest Image
- Restarts Container

---

## Monitoring

CloudWatch is configured for:

- CPU
- Memory
- Disk Usage
- Application Logs
- Dashboard
- Alarm

---

## Load Testing

k6 is used to test the application.

Run:

```bash
k6 run load-testing/load-test.js
```

---

## Security

- IAM Least Privilege
- Security Groups
- SSH Authentication
- Docker Container Isolation
- CloudWatch Monitoring

---

## Author

Methesh Shetty

DevOps Engineer