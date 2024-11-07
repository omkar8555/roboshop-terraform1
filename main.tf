module "app_instances" {
    for_each = var.app_instances
    depends_on = [module.db_instances]
    source = "./modules/ec2"
    env    =  var.env
    component_name = each.key
    instance_type  = each.value["instance_type"]
    app_port       = each.value["app_port"]
    zone_id        = var.zone_id
    domain_name    = var.domain_name

    }

module "web_instances" {
    for_each = var.web_instances
    depends_on = [module.app_instances]
    source = "./modules/ec2"
    env    =  var.env
    component_name = each.key
    instance_type  = each.value["instance_type"]
    app_port       = each.value["app_port"]
    zone_id        = var.zone_id
    domain_name    = var.domain_name
    }