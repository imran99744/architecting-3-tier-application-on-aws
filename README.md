# Creating a High Available, Fault Tolerant and Secure AWS 3-Tier Web Architecture
## Project Overview
The purpose of this project is to create a scalable and highly available, fault tolerant three-tier architecture on AWS. The architecture consists of a web tier, application tier, and database tier, enabling the deployment of a web application with efficient resource utilization.

## Architecture Overview
The 3-tier architecture is designed to separate the presentation layer (web tier), application logic layer (application tier), and data storage layer (database tier). This separation allows for modular development, scalability, and flexibility.

![3-Tire Architecture AWS](https://github.com/imran99744/architecting-3-tier-application-on-aws/assets/44345923/3cfa2e98-1248-4f8c-ad95-2eebe4e80105)

## Infrastructure Setup
The infrastructure is set up on AWS using the following components:
- Virtual Private Cloud (VPC): A logically isolated section of the AWS cloud where the architecture is deployed.
- Subnets: Six subnets are created within the VPC to distribute the resources across availability zones for high availability.
- Security Groups: Network-level access control to allow specific traffic between the tiers and restrict unauthorized access.

## Component Details
1. Web Tier:
  - The web tier consists of EC2 instances running web servers, serving as the front-end layer.
  - The web servers receive HTTP requests from users and pass them to the application tier for processing.

2. Application Tier:
  - The application tier contains EC2 instances running the application server software.
  - The application servers process requests from the web tier, handle business logic, and interact with the database tier.

3. Database Tier:
  - The database tier consists of Amazon RDS, a managed relational database service.
  - MySQL is used as the database engine.
  - The database stores and manages the application's data.

## Scalability and High Availability
The architecture supports scalability and high availability through the following mechanisms:
- Auto Scaling: Auto Scaling groups are configured in both the web and application tiers to automatically adjust the number of instances based on the workload.
- Elastic Load Balancer: A load balancer is placed in front of the web servers to distribute incoming traffic and ensure high availability.
- Multi-AZ Deployment: The database tier is deployed in multiple availability zones to ensure resilience and minimize downtime.
  
## Security Measures
To ensure the security of the architecture, the following measures are implemented:
- Network Security: Security groups are configured to restrict traffic, allowing only necessary communication between the tiers.
- Access Control: IAM roles and policies are used to grant appropriate permissions to EC2 instances and services.

## Implemented Infrastructure as Code (IaC):
After creating/implementing this architecture manually on AWS I have provisioned this entire architecture using Terraform. With Infrastructure as Code, I can define and deploy the infrastructure consistently, efficiently, and effortlessly. It's a game-changer!

## Conclution

This project documentation outlines a 3-tier architecture deployed on AWS, aiming to create a scalable and highly available and fault tolerant web application. The architecture consists of a web tier, application tier, and database tier, with each tier fulfilling specific functions. The infrastructure setup involves a Virtual Private Cloud (VPC) with six subnets, security groups, and appropriate network configurations. 
