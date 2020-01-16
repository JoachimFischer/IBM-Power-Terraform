
resource "ibm_pi_volume" "power-server-volume"{
  pi_volume_size       = 10
  pi_volume_name       = "power-volume"
  pi_volume_type       = "ssd"
  pi_volume_shareable  = true
  pi_cloud_instance_id = "${var.power-instance-id}"
}

resource "ibm_pi_instance" "power-server" {
    pi_memory             = "4"
    pi_processors         = "2"
    pi_instance_name      = "${var.power-instance-name}"
    pi_proc_type          = "shared"
    pi_migratable         = "true"
    pi_image_id           = "${var.power-image-name}"
##    pi_volume_ids         = []
    pi_network_ids        = "${var.power-network-id}"
##    pi_key_pair_name      = "${var.ssh-keyname}"
    pi_sys_type           = "s922"
    pi_replication_policy = "none"
    pi_replicants         = "1"
    pi_cloud_instance_id  = "${var.power-instance-id}"
  }
