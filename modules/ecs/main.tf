resource "aws_ecs_cluster"  "main"  {

  name = var.cluster_name


  }


resource "aws_ecs_task_definition"  "app" {

  family = var.task_family

  network_mode =  "awsvpc"

  requires_compatibilities =  ["FARGATE"]

  cpu    = "256"
 
  memory  = "512"

  execution_role_arn = var.ecs_task_execution_role_arn

  container_definitions  = jsonencode([

   {

     name  = "nginx"

     image = var.container_image

     essential = true
    
     portMappings  = [
 
      {

        containerPort = 80
 
        protocol = "tcp"

                }

               ]

             }
 
            ])

           }


resource "aws_ecs_service"  "app"  {

  name    =   "nginx-service"
 
  cluster = aws_ecs_cluster.main.id

  task_definition  = aws_ecs_task_definition.app.arn

  launch_type  = "FARGATE"

  desired_count  = var.desired_count

  load_balancer  {

    target_group_arn  =  var.target_group_arn

    container_name = "nginx"

    container_port = 80


 }


  network_configuration  {

    subnets = [

       var.private_subnet_1_id,
       var.private_subnet_2_id

      ]

    security_groups  =  [

      var.ecs_sg_id

       ]


    assign_public_ip  = false


}

}


       
 

    
