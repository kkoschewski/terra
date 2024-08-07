resource "ionoscloud_datacenter" "ops_datacenter" {
  name = var.datacenter_name
  location = "de/txl"
  description = "Datacenter for OPS"
  
  
}

resource "ionoscloud_lan" "ops_lan" {
  datacenter_id         = ionoscloud_datacenter.ops_datacenter.id
  public                = true
  name                  = "ops-lan"
  lifecycle {
    create_before_destroy = true
  }
}

resource "ionoscloud_k8s_cluster" "ops_cluster" {
  name                  = "ops-cluster"
  k8s_version           = "1.28.4"
  maintenance_window {
    day_of_the_week     = "Saturday"
    time                = "01:00:00Z"
  }

}

resource "ionoscloud_k8s_node_pool" "ops-cluster-node-pool" {
  datacenter_id         = ionoscloud_datacenter.ops_datacenter.id
  k8s_cluster_id        = ionoscloud_k8s_cluster.ops_cluster.id
  name                  = "ops-cluster-node-pool"
  k8s_version           = ionoscloud_k8s_cluster.ops_cluster.k8s_version
  maintenance_window {
    day_of_the_week     = "Saturday"
    time                = "01:00:00Z"
  } 

  cpu_family            = "INTEL_SKYLAKE"
  availability_zone     = "ZONE_1"
  storage_type          = "SSD"
  node_count            = 4
  cores_count           = 4
  ram_size              = 8192
  storage_size          = 40
  

 
}


## Output the cluster ID
output "cluster_id" {
  value = ionoscloud_k8s_cluster.ops_cluster.id
}

# Output the node pool ID
output "node_pool_id" {
  value = ionoscloud_k8s_node_pool.ops-cluster-node-pool.id
}

# Output the datacenter ID
output "datacenter_id" {
  value = ionoscloud_datacenter.ops_datacenter.id
}


