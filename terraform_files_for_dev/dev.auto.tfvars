mykey               = "petclinic_key"
ami                 = "ami-0fc5d935ebf8bc3bc"
region              = "us-east-1"
instance_type       = "t3a.medium" # in order to run petcilinic microservices app, use t3a.medium otherwise you can use t2.micro
devops_server_secgr = "sg_for_dev_server"
dev-server-ports    = [22, 80, 8000, 8080, 9090, 8081, 8082, 8083, 8888, 9411, 7979, 3000, 9091, 8761]
devservertag        = "Development-Server"