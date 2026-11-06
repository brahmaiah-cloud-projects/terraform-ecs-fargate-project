module "ecs"  {

  source = "./modules/ecs"

  cluster_name = var.cluster_name 

  task_family = var.task_family

  container_image = var.container_image

  ecs_task_execution_role_arn = module.iam.ecs_task_execution_role_arn

  desired_count  = var.desired_count

  target_group_arn =  module.alb.target_group_arn

  private_subnet_1_id   =  module.networking.private_subnet_1_id

  private_subnet_2_id   =  module.networking.private_subnet_2_id

  ecs_sg_id           =    module.security_group.ecs_sg_id
}

module "iam"  {

  source = "./modules/iam"

}

module "networking"  {

  source = "./modules/networking"
  
  vpc_cidr = var.vpc_cidr

  public_subnet_1_cidr = var.public_subnet_1_cidr

  public_subnet_2_cidr  = var.public_subnet_2_cidr

  private_subnet_1_cidr  = var.private_subnet_1_cidr

  private_subnet_2_cidr  = var.private_subnet_2_cidr


  }



module "security-group"  {

  source = "./modules/security_group"

  vpc_id  = module.networking.vpc_id


 }

module "alb"  {

  source = "./modules/alb"

  vpc_id =  module.networking.vpc_id

  public_subnet_1_id  = module.networking.public_subnet_1_id

  public_subnet_2_id  =  module.networking.public_subnet_2_id

  alb_sg_id = module.security_group.alb_sg_id

  alb_dns_name 

  


}	


