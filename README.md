Provision a local Docker container using Terraform.

Install Docker + Terraform in ec2 instance.

Terraform is a tool that lets you define infrastructure as code.
Docker is used to run containers locally.

Clone this github repository on our ec2 machine.
Docker provider declared in main.tf
docker_image + docker_container resources in main.tf

Then Initialize terraform using "terraform init" 
1.Downloads the Docker provider plugin.
2.Initializes Terraform in our folder.
3.Prepares Terraform to manage Docker resources.

Then preview changes using "terraform plan"
We will see that Terraform plans to pull the Nginx image and create a container.

Then apply the plan using "terraform apply"
1.Creates the Docker container using the Nginx image.
2.Maps port 80 inside the container → port 8080 on the host.

And finally we can see our Nginx container with our EC2  <PUBLIC_IP> "http://<ec2-public-ip>:8080"
After that our Nginx is working.

Then apply the destroy using "terraform destroy"
If the infrastructure is temporary, like for a test, demo, or CI/CD experiment.
To keep our environment clean, especially on cloud resources that cost money.

<img width="1341" height="476" alt="Screenshot 2025-09-25 173101" src="https://github.com/user-attachments/assets/4bb41a3a-8e45-4aad-88c7-b362b2e44869" />





