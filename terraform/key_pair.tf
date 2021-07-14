resource "aws_key_pair" "terraform-aws-brunocg" {
    key_name = "terraform-aws-brunocg"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtIIrIO55N/JdiZBUyNv/AnHqs3YCjwNlvbiG75q+Gug5WAurhLTUScktxH5tdrdB8YxjR3iL5knFgiZubS/NGce18LbJJeDdjXp8w8QNlLXseiBqquzw2g0vhoLZh96CL/Jj5BgLPtrbMgmlgYA3bugiHOIiGMc4+fqfM9hZurfQZpKQYGez20Wsemz5hgp7zmWLi66UsRz8Gz0rOVEC7XJL2ZxFmWZhxE/nM4PbhHwsOaD+KGx6ZCUzNLvN5yzotI+U6B3Br9R7md00o7nVcGMUip8bJRsT6dWR4Vuibvh3YedKPhtgeh+10+VfIHiHfToLdChTTRr+JaFudpMCmt/rZPsD3y6uQW4X0DKUNv2QQwWZCEUZ+tFNTM97O/U6P+6KIiyfk4DX669KSYgTtyteFyG4t2DFlgOpTcbc4j9CWvyqL6cBHTZ18toakU1/uyjYtxDfHxhzf47th5yeoSBvBm+CT6nQslicZlw2ggfctPZLxW67Hn0k3duBe+yc= brunocercan@LP1191"
    tags = {
      "Name" = "terraform-aws-brunocg"
    }
}