provider aws {
  region = "us-east-2"
}

# variable region {
#   default = ""
#   type = string
# }

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")


tags = {
  Team = "Devops-1"
  Environment = "Dev"
  Owner = "makmal"


}

}
