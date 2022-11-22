provider "aws"{
   region  = "us-east-1" 
}

resource "aws_instance" "AWSEC2Instance"{
    count = 1
    ami = "ami-05723c3b9cf4bf4ff"
    instance_type = "t2.micro"
    key_name = "sunproddevops"
    security_groups = ["launch-wizard-11"]
    tags = {
        name = "tomcatserver"
    }
}

