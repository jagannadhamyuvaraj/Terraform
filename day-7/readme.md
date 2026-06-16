












* How to use list datatype in terraform
refer to variables
```
 aws_vpc_security_group_ingress_rule.allow_tls_ipv4 will be created
  + resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" 
      + arn                    = (known after apply)
      + cidr_ipv4              = "10.0.0.0/8"
      + from_port              = 443
      + id                     = (known after apply)
      + ip_protocol            = "tcp"
      + region                 = "us-east-2"
      + security_group_id      = (known after apply)
      + security_group_rule_id = (known after apply)
      + tags_all               = {}
      + to_port                = 443
```




because sets don’t preserve order (though in Python 3.7+, they maintain insertion order for iteration, but still not meant for indexing).
