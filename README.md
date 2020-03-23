# Steps to Use terrafofrm tfvar for multi-environment build.

# Step One: Create a user profile in AWS, follow step 2-4 (User should have programatic and console access)
# Step 2: Copy/Download Secret & Access key to local box.
# Step 3: Save secret & Access Keys to ~/.aws/credentials on your local box
# Step 4: Run "aws configure" on local box and enter credentials

# To Run terraform script
# Step 1: Navigate to resource root e.g "Subnet"
# step 2: run "terraform init"
# step 3: run "terraform apply -var-file=/path/to/where/tfvar/ .
# [e.g terraform apply -var-file=/home/sunky/Documents/Newterraform/ami/module/production.tfvar] this will build resources in production environment.]
[e.g terraform apply -var-file=/home/sunky/Documents/Newterraform/ami/module/staging.tfvar] this will build resources in staging environment.]
# Using the subnet example: the above will build subnet in separate environment defined in the tfvar.
# step 4: run "terraform destroy" -var-file=/path/to/where/tfvar/ .
[e.g terraform destry -var-file=/home/sunky/Documents/Newterraform/ami/module/production.tfvar] this will destroy the resources in production environment.]

The tfvar helps with isolation. Only the resources and environment will be affected in the build and destroy event. It will not bring the whole infrastructure down. '''
~                                                                                                                                                                        
~                                                                                                                                                                        
~                             
