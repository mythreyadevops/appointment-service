# main.tf
module "vpc" {
  source    = "./modules/vpc"
  vpc_cidr  = var.vpc_cidr
}

module "eks" {
  source            = "./modules/eks"
  cluster_name      = var.cluster_name
  vpc_id            = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
}

module "alb" {
  source            = "./modules/alb"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
}

module "ecr" {
  source = "./modules/ecr"
}