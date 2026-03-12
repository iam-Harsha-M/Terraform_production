##################### Common Variables #######################

variable "product_name" {
        description = "Enter product Name"
        type        = string
}

variable "env" {
	description = "AWS deployement"
 	type        = string
}

variable "tags" {
	description = "Tags"
	type        = map(string)
   	default     = {}
}

#################### VPC Variables   ######################
variable "vpc_cidr_block_region_ap_south_1" { 
        description = "CIDR Range for VPC"
        type        = string
}

################## Subnet specific variable #################
variable "common_subnet_availability_zone_a" {
        description = "Availability Zone"
        type        = string
}

variable "common_public_subnet_cidr_block_a" {
        description = "CIDR For Public subnet"
        type        = string
}

variable "common_public_subnet_cidr_block_c" {
        description = "CIDR For Public subnet"
        type        = string
}

variable "common_private_subnet_cidr_block_a" {
       description = "CIDR For Private subnet"
       type        = string
}

variable "common_public_subnet_cidr_block_b" {
    description = "CIDR For Public subnet"
    type        = string
}

variable "common_private_subnet_cidr_block_b" {
    description = "CIDR for private subnet"
    type  	= string
}

variable "common_subnet_availability_zone_b" {
        description = "Availability Zone"
        type        = string
}

variable "common_private_subnet_cidr_block_c" {
    description = "CIDR for private subnet"
    type  	= string
}

variable "common_subnet_availability_zone_c" {
        description = "Availability Zone"
        type        = string
}


variable "family" {
  default     = "redis7"
  description = "Redis family"
}

variable "ybl_ecr_repository" {
  description = "List of ECR repositories for YBL"
  type        = list(string)
}

variable "eks" {
}
variable "msk" {
  
}

 variable "application_user_arns" {
          type        = list(string)

  }

   variable "key_name" {
          type        = list(string)
}