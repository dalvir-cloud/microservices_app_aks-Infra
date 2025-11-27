# microservices_app_aks-Infra
microservices_app deployment

                 # 🚀 Microservices Application Azure Infrastructure

This repository contains the Terraform-based infrastructure-as-code (IaC) setup for provisioning and managing Azure resources required to deploy a scalable and secure microservices application.


## 📋 Table of Contents

- [Project Overview](#project-overview)  
- [Repository Structure](#repository-structure)  
- [Modules Description](#modules-description)  
- [Prerequisites](#prerequisites)  
- [Setup and Usage](#setup-and-usage)  
- [Environment Configuration](#environment-configuration)  
- [Terraform Workflow](#terraform-workflow)  
- [Important Notes](#important-notes)  
- [Contact](#contact)  

---

## 🌟 Project Overview

This infrastructure code automates the deployment of Azure resources necessary to support a microservices architecture. It includes components such as:

- **Azure Kubernetes Service (AKS)** 🐳 for container orchestration and microservices hosting  
- **Azure Container Registry (ACR)** 📦 to store Docker container images  
- **Azure SQL Database** 💾 or other database resources for persistent storage  
- **Azure Key Vault** 🔐 for secure management of secrets and certificates  
- **Storage Accounts** 🗄️ for blob and file storage needs  
- **Resource Groups** 📂 for logical grouping of Azure resources  
- Public IP addresses 🌐 and networking components as needed  

The modular Terraform design promotes reusability, scalability, and easy maintenance across multiple environments such as development, staging, and production.

---

## 🗂️ Repository Structure

```plaintext
├── environments/
│   ├── dev/
│   ├── staging/
│   └── prod/
├── modules/
│   ├── azurerm_acr/
│   ├── azurerm_aks/
│   ├── azurerm_database/
│   ├── azurerm_keyvault/
│   ├── azurerm_pip/
│   ├── azurerm_resource_group/
│   └── azurerm_storage_account/
├── azure-pipelines.yml
└── README.md
````

* **modules/** 📦
  Contains reusable Terraform modules encapsulating individual Azure resources or resource groups, allowing you to compose complex infrastructure by combining these modules.

* **environments/** 🌍
  Environment-specific Terraform configurations that define variables and resource instantiations tailored for different deployment stages.

* **azure-pipelines.yml** ⚙️
  CI/CD pipeline definition for automated Terraform workflows including init, plan, validation, and apply.

---

## 🛠️ Modules Description

Each module corresponds to a specific Azure service or resource type:

* **azurerm_acr** 📦
  Manages Azure Container Registry for storing and managing container images securely.

* **azurerm_aks** 🐳
  Provisions Azure Kubernetes Service cluster to orchestrate your microservices containers.

* **azurerm_database** 💾
  Configures Azure SQL Database or other databases used by microservices for persistent data storage.

* **azurerm_keyvault** 🔐
  Handles Azure Key Vault setup for storing secrets, keys, and certificates with strict access policies.

* **azurerm_pip** 🌐
  Manages Public IP addresses used by load balancers or other network resources.

* **azurerm_resource_group** 📂
  Creates and manages Azure Resource Groups, the logical containers for resources.

* **azurerm_storage_account** 🗄️
  Provides Azure Storage Accounts for blob storage, file shares, or queues used by the application.

---

## ⚠️ Prerequisites

Before you begin, ensure you have the following installed and configured:

* [Terraform v1.3+](https://www.terraform.io/downloads.html) 🔧
* [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) ☁️
* Access to an Azure subscription with appropriate permissions to create and manage resources 🔑
* Service principal or managed identity with Contributor or Owner role in the subscription (for automated pipeline deployments) 👤

---

## 🚀 Setup and Usage

1. **Clone the repository**

   ```bash
   git clone https://github.com/dalvir-cloud/microservices_app_aks-Infra.git
   cd microservices_app_aks-Infra
   ```

2. **Configure your Azure credentials**

   Login to Azure CLI:

   ```bash
   az login
   ```

   Or configure service principal for automated access:

   ```bash
   az ad sp create-for-rbac --name "<your-sp-name>" --role Contributor --scopes /subscriptions/<subscription-id>
   ```

3. **Navigate to the environment folder**

   Choose the environment (e.g., dev):

   ```bash
   cd environments/dev
   ```

4. **Initialize Terraform**

   This downloads the required provider plugins and installs modules:

   ```bash
   terraform init
   ```

5. **Plan your deployment**

   Review the changes Terraform will make:

   ```bash
   terraform plan
   ```

6. **Apply the infrastructure**

   Deploy the infrastructure resources to Azure:

   ```bash
   terraform apply
   ```

---

## 🔧 Environment Configuration

* Each environment folder (`dev`, `staging`, `prod`) contains configuration files that specify variables such as resource names, locations, scaling parameters, and other environment-specific settings.
* Modify these files as needed to match your deployment targets and policies.

---

## ⚙️ Terraform Workflow Integration

The included **azure-pipelines.yml** automates the following stages:

* **terraform init and plan** 🛠️
  Initializes Terraform and generates an execution plan.

* **manual validation** ✋
  Allows for manual approval before applying changes.

* **terraform apply** ✅
  Applies the planned infrastructure changes to Azure.

You can customize the pipeline to include approval gates, notifications, and additional quality checks.

---

## ❗ Important Notes

* Always run `terraform init` after changing modules or provider versions.
* Use `terraform plan` to verify changes before applying.
* Import existing Azure resources into Terraform state if they were created outside of Terraform.
* Store Terraform state files securely, preferably using remote backend storage (e.g., Azure Blob Storage).
* Use Azure DevOps service connections securely to authenticate Terraform runs in pipelines.

For questions or support, please reach out to:

* **Maintainer:** Dalvir Singh
* **Email:** [daredalvirsingh@gmail.com](daredalvirsingh@gmail.com
* **GitHub:** [dalvir-cloud](https://github.com/dalvir-cloud)

---

Thank you for using this Terraform Azure infrastructure setup for your microservices application. Contributions and suggestions are always welcome! 🙌
