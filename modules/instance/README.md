# alicloud_cen_instance

## Input

| Name        | Description                         | Type   | Default                     | Required |
| :---------- | :---------------------------------- | ------ | --------------------------- | -------- |
| name        | The name of the CEN instance.       | string | null                        | yes      |
| description | The description of the CEN instance.| string | null                        | no       |
| new_instance| Whether to create a CEN instance.   | int    | 1                           | no       |

## Output

| Name        | Description            |
| ----------- | ---------------------- |
| this_instance_id | The ID of CEN instance |
