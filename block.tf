# create file using the block 
# create file using local environment using terraform


# block of terraform
resource "local_file" "filecreation" {
        # local : provider
        # resource  : file
 
  filename = "demo.txt"
  content = "THIS IS THE FILE CREATED BY USING THE TERRAFORM..!"
}


# terraform init, plan, apply ,destroy

# init :initialise the working directory and download the plugins
# plan: it will basically gives the previews that what are the things that will terraform create and delete
# apply : execute the plan and confirm via yes/no then create and update the infrastructure
# destroy : confirm via yes/no destroy the created resources 