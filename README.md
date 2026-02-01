# AI Analytics Platform — Senior DevOps Engineer Technical Assignment

## Overview

This repository contains a production-grade cloud platform built on AWS for an AI analytics service.

The solution demonstrates infrastructure automation, secure CI/CD, GitOps-based deployments, progressive delivery with canary releases, autoscaling, and full observability.

---

## High-Level Architecture

The platform consists of the following layers:

- Infrastructure: AWS VPC, EKS, RDS PostgreSQL, Redis, S3, NATS JetStream
- Platform: Kubernetes with GitOps, autoscaling, and security policies
- Application: Go-based microservice (v1 and v2)
- CI/CD: GitHub Actions
- Observability: Prometheus, Grafana, Loki, OpenTelemetry

Architecture diagrams are available in the `diagrams/` directory.

---

## Infrastructure

Infrastructure is provisioned using Terraform modules orchestrated by Terragrunt.

### Key design points

- Multi-AZ VPC with public and private subnets
- Managed EKS cluster with OIDC enabled
- IAM Roles for Service Accounts (IRSA)
- RDS PostgreSQL with Multi-AZ and storage autoscaling
- Redis deployed in private subnets
- NATS JetStream deployed as a stateful workload
- Remote Terraform state stored in S3 with DynamoDB locking

### Deploy infrastructure

```bash
cd infra/live/prod
terragrunt run-all apply
