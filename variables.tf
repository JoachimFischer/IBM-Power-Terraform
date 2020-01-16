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
## DEFINE Region and Zones 
#---------------------------------------------------------
# this information is not necessary
# it is defined with service target
# use cmd: $ibmcloud pi service-list
# add the information into variable power-instance-id

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
  description = "Name of the Power image key to be used 7100-05-04 / 7200-03-05"
  default = "7200-03-03"
}

variable "power-instance-id" {
  description = "Power Instance associated with the account Get ot by running cmd: ic resource service-instances --long"
}

variable "instance-count" {
  default = 1
}

#---------------------------------------------------------
## DEFINE additional variables
#---------------------------------------------------------
variable "ibmcloud_timeout" {}
