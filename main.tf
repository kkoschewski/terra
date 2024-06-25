resource "ionoscloud_datacenter" "ops-datacenter" {
  name        = var.datacenter_name
  location    = "de/txl"
  description = "datacenter description"

}

# resource "ionoscloud_k8s_cluster" "mein_cluster" {
#   name        = var.cluster_name
#   k8s_version = var.k8s_version
#   maintenance_window {
#     day_of_the_week = "Sunday"
#     time            = "02:00:00Z"
#   }
# }#



# resource "ionoscloud_k8s_node_pool" "example" {
#   datacenter_id  = ionoscloud_datacenter.ops-datacenter.id
#   k8s_cluster_id = ionoscloud_k8s_cluster.mein_cluster.id
#   name           = var.node_pool_name
#   k8s_version    = var.k8s_version
#   maintenance_window {
#     day_of_the_week = "sunday"
#     time            = "02:00:00Z"
#   }
# }

# cpu_family            = "INTEL_XEON"
#   availability_zone     = "AUTO"
#   storage_type          = "SSD"
#   node_count            = 2
#   cores_count           = 2
#   ram_size              = 4096    
#   storage_size          = 40
#   public_ips            = [ ionoscloud_ipblock.example.ips[0], ionoscloud_ipblock.example.ips[1], ionoscloud_ipblock.example.ips[2] ]
#   lans {
#     id                  = ionoscloud_lan.example.id
#     dhcp                = true
#     routes {
#        network          = "1.2.3.5/24"
#        gateway_ip       = "10.1.5.17"
#      }
#    }  
