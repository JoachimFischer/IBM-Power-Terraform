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
  description = "use  Frankfurt data center2"
  default = "frankfurt1"
}

#---------------------------------------------------------
## DEFINE CIDR Blocks for Power in Region
#---------------------------------------------------------
variable "power-address-prefix" {
  description = "The Power address prefix"
  default = "192.168.1.0/24"
}

#---------------------------------------------------------
## DEFINE Power Instance
#---------------------------------------------------------
variable "power-instance-name" {
  description = "Name of Power instance"
  default = "powertest"
}

variable "power-image-name" {
  description = "Name of the Power image key to be used"
}

variable "power-instance-id" {
  description = "Power Instance associated with the account"
}

variable "instance-count" {
  default = 1
}

#---------------------------------------------------------
## DEFINE additional variables
#---------------------------------------------------------
variable "ibmcloud_timeout" {
   default = 300
}
