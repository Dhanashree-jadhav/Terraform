<!-- This Terraform configuration demonstrates how to use the Local provider to create a file on the local system using Infrastructure as Code (IaC).

🔹 Terraform Block
terraform {


This is the Terraform core configuration block.
It defines settings that control how Terraform behaves for this project.


  required_providers {


Specifies the providers required by this Terraform configuration.
Providers are plugins that allow Terraform to interact with external systems.


    local = {


Declares the local provider.
The local provider is used to manage local system resources such as files.


      source = "hashicorp/local"


Defines the source of the provider.
hashicorp/local indicates the official Local provider maintained by HashiCorp and downloaded from the Terraform Registry.



      version = "~> 2.5"


Specifies the allowed provider version.
~> 2.5 means:
Any version 2.5.x is allowed
Versions 2.6.0 or 3.x are not allowed
This prevents breaking changes and ensures consistent behavior across environments.



🔹 Provider Block
provider "local" {}


Initializes and activates the local provider.
An empty block {} means default configuration is sufficient.
This allows Terraform to manage local resources.



🔹 Resource Block
resource "local_file" "example" {


Defines a resource that Terraform will manage.
local_file is the resource type (file on local system).
example is the logical name used internally by Terraform.


  filename = "hello.txt"


Specifies the name of the file to be created.
The file will be created in the directory where terraform apply is executed.


  content = "Hello Terraform! Installed successfully 🎉"


Defines the content that will be written into the file.
Terraform ensures the file always contains this exact content.




Ends the resource definition.

🔹 What Happens When Terraform Runs

When the following commands are executed:

terraform init
terraform apply


Terraform will:

Download the hashicorp/local provider

Create a file named hello.txt

Write the specified content into the file

Track the resource state in terraform.tfstate -->