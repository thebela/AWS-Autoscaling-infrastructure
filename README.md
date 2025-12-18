# AWS Autoscaling Infrastructure 🚀

This project is basically a full production-style AWS setup which deploys:

- VPC (public subnets)
- Application Load Balancer
- Launch Template
- Auto Scaling Group
- CloudWatch alarms
- UserData for auto-deploying a static website

Everything is written in Terraform… IaC gang 💪

## 🏗 How to Deploy

cd terraform
terraform init
terraform apply -auto-approve

After a few minutes, grab the ALB DNS name from output and open it in browser.

## 🧱 Project Structure

- terraform/ → All infra code
- app/ → Static website
- scripts/ → Helper bash scripts
- architecture/ → Diagrams and explanation

## 🔥 What this infra does

- Automatically scales EC2 instances based on CPU
- Load balances traffic across AZs
- Deploys your static website at boot time
- Fully automated and reusable setup

Enjoy scaling 😎
