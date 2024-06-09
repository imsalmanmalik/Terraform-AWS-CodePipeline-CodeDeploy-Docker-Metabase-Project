# Terraform-AWS-CodePipeline-CodeDeploy-Docker-Metabase-Project

This repository showcases a complete deployment of a PHP application on AWS using Terraform, Docker, AWS CodeDeploy and CodePipeline.

## Table of Contents

- [Project Overview](#project-overview)
- [Getting Started](#getting-started)
- [Infrastructure Setup](#infrastructure-setup)
- [CI/CD Pipeline](#ci-cd-pipeline)
- [Domain and SSL Configuration](#domain-and-ssl-configuration)
- [Monitoring](#monitoring)

## Project Overview

This project demonstrates the following key aspects:
- **Infrastructure as Code (IaC):** Automated deployment of AWS resources including VPC with private subnets using Terraform.
- **AWS Services:** Deployment of EC2 instances, RDS, S3, and more.
- **Application Setup:** Nginx and PHP applications deployed using Docker containers.
- **CI/CD Pipeline:** Continuous Integration and Continuous Deployment using AWS CodeDeploy.
- **Security:** SSL certificates configuration via Cloudflare.
- **Live Visualization:** Metabase BI tool for monitoring the RDS MySQL database.
- **Access Management:** Secure access to private resources using a jump server.

## Getting Started

To get a local copy up and running, follow these steps.

### Prerequisites

- AWS Account
- Terraform
- Docker
- AWS CLI
- Cloudflare Account

### Installation

1) Configure AWS CLI:

```bash
aws configure
```

## Infrastructure Setup

1) Apply Terraform Configuration:
   
```bash
terraform init
```

```bash
terraform plan
terraform apply
```

2) Access Jump Server:

```bash
ssh -i your-key.pem ec2-user@jump-server-ip
```

3) Access Backend Server via Jump Server:

```bash
ssh -i your-key.pem ec2-user@private-vm-ip
```

## CI/CD Pipeline

1) Setup Docker and Docker-Compose:

* Ensure Docker and Docker-Compose are installed on the deployment servers.

2) Configure CodeDeploy:

* Use the provided appspec.yml and buildspec.yml files to setup CodeDeploy.

3) Deploy Applications:

* Deploy Nginx and PHP applications using Docker containers.

## Domain and SSL Configuration

1) Domain Setup:

* Configure your domain with Cloudflare.

2) SSL Certificates:

* Add a CNAME record in Cloudflare to get free SSL certificates for your domain.

## Monitoring

1) Setup Metabase:
   
* Deploy Metabase using Docker.

* Configure Metabase to monitor the RDS MySQL database.
