#---------------------------------------------------------
# MODIFY VARIABLES AS NEEDED
#---------------------------------------------------------
variable "ibmcloud_api_key" {}

#---------------------------------------------------------
## DEFINE sshkey to be used for compute instances
#---------------------------------------------------------
variable "ssh_keyname" {}

#---------------------------------------------------------
## DEFINE Ressource Group (IAM) for Power-IaaS
#---------------------------------------------------------
variable "resource_group" {
  description = "The Ressource Roup must be defined in IBM Cloud IAM"
  default = "Power-Ressource"
}

#---------------------------------------------------------
## DEFINE Region and Zones in US-South Dallas or
## Frankfurt region eu-de
#---------------------------------------------------------
# cloud region like eu-de 
variable "ibmcloud_region" {
  description = "Region of Power like eu-de"
  default = "eu-de"
}
#---------------------------------------------------------
## define data center in Region 
#----------------------------------------------------------
variable "datacenter" {
  description = "use  FRankfurt data center2"
  default = "frankfurt1"
}

#---------------------------------------------------------
## DEFINE CIDR Blocks for Power in Region
#---------------------------------------------------------
variable "vpc-address-prefix" {
  description = "The VPC address prefix"
  default = "192.168.1.0/24"
}

#---------------------------------------------------------
## DEFINE additional variables
#---------------------------------------------------------
variable "server-name" {
  default = "servername"
}

variable "server-count" {
  default = 1
}

variable "ibmcloud_timeout" {
   default = 300
}
#-------------------- updaten ------------------------
variable "imagename" {
  description = "Name of the image key to be used"
}

variable "powerinstanceid" {
  description = "Power Instance associated with the account"
}

variable "instancename" {
  description = "Name of the instance"
}

variable "sshkeyname" {
  description = "Name of the ssh key to be used"
}
