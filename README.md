# Terraform AWS ARN Replace

Replaces portions of a given ARN with provided values. An example use case might be to generate the ARN of a Secrets Manager secret replica in a different region.

## Usage

```
module "arn-replace" {
  source = "Invicton-Labs/arn-replace/aws"
  arn    = "arn:aws:secretsmanager:us-east-1:123456789123:secret:my-secret"
  region = "us-west-2"
}

output "arn-replace" {
  value = module.arn-replace
}
```

**Output:**
```
Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

arn-replace = {
  "arn" = "arn:aws:secretsmanager:us-west-2:123456789123:secret:my-secret"
}
```