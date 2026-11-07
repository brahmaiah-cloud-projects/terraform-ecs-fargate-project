variable "cluster_name"  {

  description =  "ECS Cluster Name"

  type =  string 


  }

variable "task_family" {

  description = "Task Definition Family Name"

  type = string

}

variable "container_image" {

  description = "Docker Image"

  type = string

}


variable "desired_count"  {

  description = "Number Of Tasks To Run"

  type  = number 


  }



variable "target_group_arn"  {

  description  =  "Target Group Arn"

  type = string


}



variable "private_subnet_1_id"  {

  description  =  "Private Subnet 1 ID"

  type = string

 }


variable "private_subnet_2_id"   {

  description = "private Subnet 2 ID"

  type =  string 


  }


variable "ecs_sg_id"  {

  description  =  "ECS Security Group ID"

  type =  string 


}


variable "ecs_task_execution_role_arn" {

  description = "ECS Task Execution Role ARN"

  type = string

}


variable "min_capacity"  {

  description = "Minimum ECS Tasks"

  type =  number 

  default  =  1


}


variable  "max_capacity"  {

  description = "Max Capacity For ECS Tasks"

  type = number 

  default = 4


}








 
