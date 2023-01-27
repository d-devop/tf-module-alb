data "aws_route53_zone" "main" {
  name         = "devops-d.online"
  private_zone = false
}