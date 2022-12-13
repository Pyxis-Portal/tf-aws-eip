<!-- BEGIN_TF_DOCS -->
<!-- markdownlint-disable MD033 -->
# Elastic IP Module

- Creating of elastic IP
- Provides an AWS EIP Association as a top level resource, to associate and disassociate Elastic IPs from AWS Instances and Network Interfaces.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.61.0 |


## Resources

| Name | Type |
|------|------|
| [aws_eip.eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip_association.eip_assoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_eip"></a> [create\_eip](#input\_create\_eip) | Determines whether resources will be created, if true | `bool` | `false` | no |
| <a name="input_create_eip_association"></a> [create\_eip\_association](#input\_create\_eip\_association) | Determines whether resources will be created, if true | `bool` | `false` | no |
| <a name="input_ec2_instance_id"></a> [ec2\_instance\_id](#input\_ec2\_instance\_id) | (Optional) EC2 instance ID. | `string` | `null` | no |
| <a name="input_eip_address"></a> [eip\_address](#input\_eip\_address) | IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | all tags for all recursives | `any` | `null` | no |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | (Optional) Boolean if the EIP is in a VPC or not. Defaults to true unless the region supports EC2-Classic. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of EIP |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | public IP |
<!-- END_TF_DOCS -->