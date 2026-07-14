# Security Summary

## Overview

This project follows basic production-oriented security practices for deploying applications on AWS.

---

## 1. IAM Security

- IAM Role attached to EC2
- No AWS Access Keys stored on the server
- Least Privilege Principle followed

---

## 2. SSH Security

- SSH Key Authentication
- Password login disabled
- Private key stored securely

---

## 3. GitHub Secrets

Sensitive information is stored securely using GitHub Secrets.

Secrets used:

- DOCKER_USERNAME
- DOCKER_PASSWORD
- EC2_HOST
- EC2_USERNAME
- EC2_SSH_KEY

---

## 4. Docker Security

- Official Node.js Base Image
- Container Isolation
- Only required ports exposed

---

## 5. EC2 Security Group

Allowed Ports:

- 22 (SSH)
- 80 (HTTP)
- 443 (HTTPS)

No unnecessary ports are open.

---

## 6. CloudWatch Monitoring

CloudWatch is configured for:

- CPU Monitoring
- Memory Monitoring
- Disk Monitoring
- Application Logs
- Dashboard
- CPU Alarm

---

## 7. Source Code Security

- Source code managed with Git
- Version control through GitHub
- Automated deployment using GitHub Actions

---

## 8. Automated Deployment

Every push to the main branch:

- Builds Docker Image
- Pushes Image to Docker Hub
- Deploys automatically to EC2

This reduces manual deployment errors.

---

## Conclusion

This project demonstrates secure deployment practices suitable for learning production DevOps workflows using AWS Free Tier services.