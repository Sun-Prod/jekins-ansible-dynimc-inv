provider "aws"{
   region  = "ap-southeast-1" 
}

resource "aws_instance" "AWSEC2Instance"{
    count = 1
    ami = "ami-050c88925ff2bb50"
    instance_type = "t2.micro"
    key_pair = "sunproddevops"
    security_groups = ["launch-wizard-11"]
    tags{
        name = "tomcatserver"
    }
}

