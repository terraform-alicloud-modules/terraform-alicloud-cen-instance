# alicloud_cen_route_entry

## Input

| Name           | Description                                               | Type   | Default | Required |
| :------------- | :-------------------------------------------------------- | ------ | ------- | -------- |
| instance_id    | ID of the CEN instance.                                   | string | null    | yes      |
| route_table_id | The route table of the attached VBR or VPC.               | string | null    | yes      |
| cidr_block     | The destination CIDR block of the route entry to publish. | string | null    | yes      |
| publish_route_entry | Whether to publish the route entry to the cen.       | boolean | false  | no       |

## Output

| Name           | Description                                               |
| :------------- | :-------------------------------------------------------- |
| this_instance_id    | ID of the CEN instance.                                   |
| this_route_table_id | The route table of the attached VBR or VPC.               |
| this_cidr_block     | The destination CIDR block of the route entry to publish. |
