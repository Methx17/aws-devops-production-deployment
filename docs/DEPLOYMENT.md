# AWS DevOps Production Deployment Guide

## Project Overview

This project demonstrates a complete DevOps CI/CD pipeline for deploying a Node.js application to AWS EC2 using Docker, GitHub Actions, Docker Hub, and CloudWatch.

## Technologies Used

- AWS EC2
- Docker
- Docker Hub
- GitHub
- GitHub Actions
- CloudWatch
- Node.js
- k6

## Deployment Steps

### 1. Clone the Repository

```bash
git clone https://github.com/Methx17/aws-devops-production-deployment.git
cd aws-devops-production-deployment
```

### 2. Configure GitHub Secrets

Add the following secrets:

- DOCKER_USERNAME
- DOCKER_PASSWORD
- EC2_HOST
- EC2_USERNAME
- EC2_SSH_KEY

### 3. Push Changes

```bash
git add .
git commit -m "Deploy application"
git push origin main
```

### 4. GitHub Actions

The workflow automatically:

- Builds the Docker image
- Pushes the image to Docker Hub
- Connects to the EC2 instance
- Pulls the latest Docker image
- Restarts the application container

### 5. Monitoring

CloudWatch provides:

- CPU utilization
- Memory usage
- Disk usage
- Application logs
- CPU alarm notifications

## Result

Every push to the `main` branch automatically deploys the latest version of the application to AWS EC2.