# Terraform AWS EC2 – Hands-on Practice Task

## 👩‍💻 Performed by

**Dhanashree Jadhav**
DevOps & Cloud Enthusiast

---

## 📌 Task Overview

This task demonstrates how to set up **Terraform** on a local system, configure it with **AWS**, and write Infrastructure as Code (IaC) to provision an **EC2 instance**.

The task focuses on:

* Understanding Terraform workflow
* Secure AWS authentication using IAM
* Writing and initializing Terraform configuration
* Planning infrastructure safely without incurring AWS costs

---

## 🛠️ Tools & Technologies Used

* **Terraform**
* **AWS IAM**
* **AWS EC2**
* **AWS CLI**
* **Visual Studio Code**
* **Windows OS**

---

## 📂 Project Structure

```
terraform-ec2/
│── main.tf
│── .terraform/
│── .terraform.lock.hcl
```

---

## 🔐 Step 1: AWS IAM Setup

### Why IAM?

IAM (Identity and Access Management) is used to securely control access to AWS services without using the root account.

### Actions Performed:

* Created an IAM user named **terraform-user**
* Attached required permissions to manage EC2 resources
* Generated an **Access Key & Secret Key** temporarily

⚠️ **Security Best Practice:**

* Root user was NOT used
* Access key was deleted after verification

---

## 💻 Step 2: AWS CLI Installation & Verification

### Command Used:

```bash
aws --version
```

### Output:

```
aws-cli/2.24.16 Python/3.12.9 Windows/11 exe/AMD64
```

This confirms AWS CLI was installed successfully.

---

## 🔑 Step 3: AWS CLI Configuration

AWS CLI was configured temporarily using:

```bash
aws configure
```

Details provided:

* Access Key ID
* Secret Access Key
* Default Region: `ap-south-1`
* Output Format: `json`

After successful verification, the access key was **deleted** for security.

---

## 🧾 Step 4: Terraform Configuration (`main.tf`)

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "student_ec2" {
  ami           = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Student-EC2"
  }
}
```

### Explanation:

* **terraform block** → Defines provider requirements
* **provider block** → Sets AWS region
* **resource block** → Declares an EC2 instance
* **AMI** → Amazon Linux image for Mumbai region
* **t2.micro** → Free-tier eligible instance

---

## ⚙️ Step 5: Terraform Initialization

### Command Used:

```bash
terraform init
```

### Purpose:

* Downloads AWS provider plugin
* Initializes Terraform working directory
* Creates `.terraform.lock.hcl`

### Result:

✅ Terraform initialized successfully

---

## 🔍 Step 6: Terraform Plan

### Command Used:

```bash
terraform plan
```

### Purpose:

* Shows what Terraform *will create*
* Does not create any AWS resources
* Safe and cost-free

### Result:

✅ Terraform plan executed successfully

---

## 🚫 Why `terraform apply` Was NOT Run

* To **avoid AWS charges**
* Task objective was understanding **IaC workflow**, not deployment
* Demonstrates responsible cloud usage

---

## 🔐 Security Considerations

* IAM access key was **deleted** after use
* No credentials stored in code or repository
* Root account never used

```md
Best Practice Followed:
✔ Principle of Least Privilege
✔ No long-term credentials stored
✔ Secure IAM usage
```

---

## 📘 Key Learnings

* Terraform workflow: `init → plan → apply`
* AWS IAM & security best practices
* Infrastructure as Code fundamentals
* Safe cloud experimentation

---

## ✅ Conclusion

This task successfully demonstrates:

* Secure AWS authentication
* Writing Terraform configuration
* Initializing and planning infrastructure
* Following cloud security best practices

The project is suitable for **GitHub**, **resume**, and **DevOps interviews**.

---

⭐ *This project intentionally avoids resource creation to ensure zero cloud cost while showcasing real-world DevOps practices.*
