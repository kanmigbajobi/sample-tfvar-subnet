provider "aws" {
  region    = "${var.region}"
}

terraform {
  backend "s3" {
    bucket          = "sunkygbajobi.tfstate"
    key             = "sunkygbajobi/sample.tfstate"
    region          = "eu-west-2"
    dynamodb_table  = "Terraform-Lock-State"
    encrypt         = true
  }
}

module "subnet" {
  source        = "./module/subnet"
  cidr_block    = "${var.cidr_block}"
  vpc_id        = "${var.vpc_id}"
  region        = "${var.region}"

}

