# Alicloud CEN Terraform Module On Alibaba Cloud terraform-alicloud-cen-instance

Terraform module which creates CEN instance, attach child instance to it and publish a specified route of the child instance on Alibaba Cloud.

These types of resources are supported:

- [instance](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/cen_instance.html.markdown)
- [instance attachment](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/cen_instance_attachment.html.markdown)
- [cen_route entry](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/cen_route_entry.html.markdown)

## Usage

You can use this in your terraform template with the following steps.

```hcl
module "cen_instance" {
   source = "terraform-alicloud-modules/cen-instance/alicloud"

   name                     = "cen-instance-name"
   new_instance             = true
   # instance_id            = "cen-xxx"
   child_instance_id        = "vpc-xxx"
   child_instance_region_id = "cn-xxx"
   attach_instance          = true
   route_table_id           = "vtb-xxx"
   cidr_block               = "x.x.x.x/x"
   publish_route_entry      = true
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

# Input

| Name                     | Description                                               | Type    | Default | Required |
| :----------------------- | :-------------------------------------------------------- | ------- | ------- | -------- |
| name                     | Name of the CEN instance                                  | string  | null    | yes      |
| description              | The description of the CEN instance.                      | string  | null    | no       |
| new_instance             | Whether to create a CEN instance.                         | int     | 1       | no       |
| instance_id              | The ID of the CEN instance to attach.                     | string  | null    | no       |
| child_instance_id        | The ID of the child instance.                             | string  | null    | yes      |
| child_instance_region_id | The region ID of the child instance                       | string  | null    | yes      |
| attach_instance          | Whether to attach the child instance to one cen instance. | boolean | false   | no       |
| route_table_id           | The route table of the attached VBR or VPC.               | string  | null    | yes      |
| cidr_block               | The destination CIDR block of the route entry to publish. | string  | null    | yes      |
| publish_route_entry      | Whether to publish the route entry to the cen.            | boolean | false   | no       |
~>**Note:** If set instance_id with new_instance true, the cen_instance_attachment module and cen_route_entry module will use the instance_id you specified. Otherwise, the instance_id created by module cen_instance will be used.


## Output

| Name                   | Description                                               |
| ---------------------- | --------------------------------------------------------- |
| this_instance_id       | The ID of CEN instance                                    |
| this_child_instance_id | The ID of CEN child instance                              |
| this_route_table_id    | The route table of the attached VBR or VPC.               |
| this_cidr_block        | The destination CIDR block of the route entry to publish. |
