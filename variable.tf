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


variable "vpc_cidr" {


  type  = string

  }

variable "public_subnet_1_cidr"  {

  type = string 

  }


variable "public_subnet_2_cidr"   {

  type  = string 

  }


variable "private_subnet_1_cidr"  {

  type  = string 

  }


variable "private_subnet_2_cidr"    {

  type  = string  

  }