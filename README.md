AWS ECS Fargate Deployment Using Terraform
Project Overview

This project deploys a containerized Nginx application on AWS using Terraform. The infrastructure follows a modular approach and includes networking, security, load balancing, container orchestration, and IAM components.

The application runs on Amazon ECS using AWS Fargate and is accessed through an Application Load Balancer (ALB).

Modules Created

Networking Module

VPC
Public Subnets
Private Subnets
Internet Gateway
NAT Gateway
Route Tables
Route Table Associations
Security Group Module
ALB Security Group
ECS Security Group

ALB Module

Application Load Balancer
Target Group
Listener

ECS Module

ECS Cluster
ECS Task Definition
ECS Service

IAM Module

ECS Task Execution Role
AmazonECSTaskExecutionRolePolicy



Challenges Faced

During this project, several issues were identified and resolved:

Terraform variable and output mapping issues
Module dependency issues
Resource reference errors
ECS and ALB integration challenges
Internet Gateway and NAT Gateway configuration
Route table association issues
Terraform validation errors

These issues helped improve understanding of Terraform troubleshooting and AWS architecture.
