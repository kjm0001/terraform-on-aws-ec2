# Template
/*
<BLOCK TYPE> "<BLOCK LABEL>" "<BLOCK LABEL>" {
  # Block body
  #provider = aws.aws-west-1 # optional meta-argument 
  <IDENTIFIER> = <EXPRESSION> # Argument
}
*/

# Resource: EC2 Instance
resource "aws_instance" "myec2vm" { # aws_instance => resource type myec2vm => resource local name
  # resource local name can be referenced elsewhere in same module
  # resource type and resource local name must be unique within module
  #provider = aws.aws-west-1 # optional meta-argument 
  ami           = "ami-0742b4e673072066f"
  instance_type = "t3.micro"
  user_data     = file("${path.module}/app1-install.sh") # allows for execution of script
  # use tf file function
  tags = { # block inside block
    "Name" = "EC2 Demo"
  }
}
