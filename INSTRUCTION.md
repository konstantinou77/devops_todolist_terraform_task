# How to Validate This Terraform Deployment

# Prerequisites:

- Azure CLI (az) is installed and authenticated
- Terraform CLI is installed (v1.3+ recommended)
- You have access to an Azure subscription
- SSH key pair is generated (for example: ~/.ssh/id_rsa.pub)
- The backend storage account and container exist for remote state

 # Deploy the Infrastructure:

terraform init               # Initialize the provider and backend
terraform plan -out=tfplan   # Preview and save planned changes
terraform apply tfplan       # Apply the saved plan


#  How to validate deployment:

connect with SSH into the VM:
ssh -i ~/.ssh/id_rsa azureuser@<public_ip>   # or use <azure_dns_label>

You can get the VM’s public IP or DNS name with:

terraform output

# Validate application:

Open a web browser and navigate to:

http://<public_ip>     or use <azure_dns_label>

You should see the ToDo List application interface.

# Optional: Cleanup

To remove all deployed infrastructure:

terraform destroy