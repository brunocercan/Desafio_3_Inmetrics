# resource "aws_route53_record" "www" {
#   zone_id = "Z00892882FUUMIJ25W8YA"
#   name = "duplabruno-amanda.tech-talent.cf"
#   type = "A"

#   alias {
#     name = "af177b10dfdf641bda16306d4fb6ac99-e6e624ec3677978f.elb.us-east-1.amazonaws.com" #DNS DO NETWORK LOAD BALANCER
#     zone_id = "Z26RNL4JYFTOTI" #ZONA HOSPEDADA LOGO ABAIXO DAS SUBNETS
#     evaluate_target_health = true
#   }
# }