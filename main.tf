module "ec2" {
    for_each       = var.instances
    source         = "./modules/ec2"
    component_name = each.key
    app_port       = each.value["app_port"]

    env            = var.env
    }