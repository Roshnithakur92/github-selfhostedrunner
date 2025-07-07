output "vpc_id" {
  value = module.networking.vpc_id
}

output "vm_instance_name" {
  value = module.compute.vm_instance_name
}

/*output "public_vm_instance_name" {
  value = module.compute.public_vm_instance_name
}*/