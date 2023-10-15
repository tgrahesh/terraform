module "VPC_New_Config" {
  source = "./modules/VPC_New_Config"
}

module "security_groups" {
  source = "./modules/Security_Groups"
}

module "LaunchTemplate" {
  source = "./modules/LaunchTemplate"
}

module "TargetGroup" {
  source = "./modules/TargetGroup"
  vpc_id = var.vpc_id
}

module "ALB" {
  source = "./modules/ALB"
}

module "VPC_Config" {
  source = "./modules/VPC_Config"
}