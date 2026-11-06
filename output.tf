output "cluster_id"  {

  value  =    module.ecs.cluster_id

  }


output "task_definition_arn"  {

  value = module.ecs.task_definition_arn


  }


output "service_name"  {

  value = module.ecs.service_name


}


output "vpc_id"  {

  value = module.networking.vpc_id

 }

output "public_subnet_1_id"  {

  value = module.networking.public_subnet_1_id


  }


output "private_subnet_1_id"  {

  value = module.networking.private_subnet_1_id

  }


output "alb_sg_id"  {

  value = module.security_group.alb_sg_id


  }


output  "ecs_sg_id"  {

  value = module.security_group.ecs_sg_id


  }

output "private_subnet_2_id"  {

  value = module.networking.private_subnet_2_id

  }


output "alb_dns_name"   {

  value =  module.alb.alb_dns_name

 }


output "target_group_arn"   {
 
  value = module.alb.target_group_arn


}