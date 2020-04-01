# Steps to take in executing terrafofrm tfvar for multi-environment build.

* [Step 1:] Create a user profile in AWS, follow step 2-4 (User should have programatic and console access)
* [Step 2:] Copy/Download Secret & Access key to local box.
* [Step 3:] Save secret & Access Keys to "~/.aws/credentials" on your local box
* [Step 4:] Run "aws configure" on local box and enter credentials

# To Run terraform tfvar for individual environment, follow the below steps:

* [Step 1:] Navigate to the root of your project eg. sample-tfvar-subnet
* [Step 2:] run "terraform init"
* [Step 3:] run "terraform plan -var-file=/path/to/where/environment/tfvar/is/located

e.g. For a plan of the production environment:
```
terraform plan -var-file=environments/production/terraform.tfvar
```

e.g. To apply changes into the staging environment.
```
terraform apply -var-file=environments/staging/terraform.tfvar
```

Using the subnet example: the above will build subnet in separate environment defined in the tfvar.

* [Step 4:] run "terraform destroy" -var-file=/path/to/where/tfvar/ .
e.g. To destroy the resources in production environment:
```
terraform destroy -var-file=environments/production/terraform.tfvar
```

The tfvar helps with isolation. Only the resources and environment will be affected in the build and destroy event. It will not bring the whole infrastructure down. '''
~
~
~
