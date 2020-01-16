data "ibm_pi_tenant" "ds_tenant" {
  pi_cloud_instance_id = var.power-instance-id
}

data "ibm_pi_volume" "ds_volume" {
  pi_volume_name       = "myvol"
  pi_cloud_instance_id = var.power-instance-id
}

data "ibm_pi_instance_volumes" "ds_volumes" {
  pi_instance_name     = "mypi"
  pi_cloud_instance_id = var.power-instance-id
}

data "ibm_pi_key" "ds_instance" {
  pi_key_name          = "mykey"
  pi_cloud_instance_id = var.power-instance-id
}

data "ibm_pi_instance" "ds_instance" {
  pi_instance_name     = "mypi"
  pi_cloud_instance_id = var.power-instance-id
}

data "ibm_pi_images" "ds_images" {
	pi_image_name        = "my_pi_images"  
	pi_cloud_instance_id = var.power-instance-id
}

resource "ibm_pi_volume" "testacc_volume"{
  pi_volume_size       = 20
  pi_volume_name       = "test-volume22"
  pi_volume_type       = "ssd"
  pi_volume_shareable  = true
  pi_cloud_instance_id = var.power-instance-id  
}

resource "ibm_pi_key" "testacc_sshkey2" {
  pi_key_name          =  "mykey22"
  pi_ssh_key           =  var.sshkeyname
  pi_cloud_instance_id =  var.power-instance-id 
}

resource "ibm_pi_instance" "power-server" {
    pi_memory             = "4"
    pi_processors         = "2"
    pi_instance_name      = "${var.power-instance-name}"
    pi_proc_type          = "shared"
    pi_migratable         = "true"
    pi_image_id           = "${var.power-image-name}"
    pi_volume_ids         = []
    pi_network_ids        = ["<id of the VM's network IDs>"]
    pi_key_pair_name      = "${var.ssh-keyname}"
    pi_sys_type           = "s922"
    pi_replication_policy = "none"
    pi_replicants         = "1"
    pi_cloud_instance_id  = var.power-instance-id 
