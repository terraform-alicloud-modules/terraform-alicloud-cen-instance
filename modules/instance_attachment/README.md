# alicloud_cen_instance_attachment

## Input

| Name                     | Description                                    | Type   | Default | Required |
| :----------------------- | :--------------------------------------------- | ------ | ------- | -------- |
| instance_id              | The ID of the CEN.                             | string | null    | yes      |
| child_instance_id        | The ID of the child instance to attach.        | string | null    | yes      |
| child_instance_region_id | The region ID of the child instance to attach. | string | null    | yes      |
| attach_instance          | Whether to attach the child instance to one cen instance | boolean | false | no |

## Output

| Name              | Description                  |
| ----------------- | ---------------------------- |
| this_instance_id       | The ID of CEN instance       |
| this_child_instance_id | The ID of CEN child instance |
