# Terraform + Prometheus Monitoring

This project provisions an AWS EC2 instance and sets up Prometheus monitoring using Node Exporter.

---

## 🚀 Terraform Infrastructure Provisioning

### Prerequisites:
- AWS CLI configured
- Terraform installed
- SSH key pair created in AWS EC2

### Steps:


 - cd terraform
 - terraform init
 - terraform plan -var="key_name=your-key" -var="state_bucket=your-bucket"
 - terraform apply -var="key_name=your-key" -var="state_bucket=your-bucket"


### Steps for Prometheus Setup
1. SSH into the EC2 instance:

ssh -i your-key.pem ubuntu@<EC2_PUBLIC_IP>

2. Verify node_exporter is running:

curl http://localhost:9100/metrics

3. On your local machine, install Prometheus and configure prometheus.yml.

4. Start Prometheus locally:

./prometheus --config.file=prometheus.yml

5. Visit: http://localhost:9090