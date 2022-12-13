variable "create_eip" {
  type = bool
  default = false
  description = "Determines whether resources will be created, if true"  
}

variable eip_address {
  type        = string
  default     = null
  description = "IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs."
}
variable ec2_instance_id {
  type        = string
  default     = null
  description = " (Optional) EC2 instance ID."
}

variable vpc {
  type = bool
  default = true
  description = "(Optional) Boolean if the EIP is in a VPC or not. Defaults to true unless the region supports EC2-Classic."
}

variable create_eip_association {
  type = bool
  default = false
  description = "Determines whether resources will be created, if true"
}

variable "tags" {
  type        = any
  default     = null
  description = "all tags for all recursives"
}
