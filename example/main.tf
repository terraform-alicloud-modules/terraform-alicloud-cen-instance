module "cen" {
  source       = "../"
  name         = "cen-instance-name"
  description = "cen-example"

  instances_attachment = [
        {
          "vpc_id": "vpc-abc123",
          "vpc_name": "my-prod",
          "vpc_owner_id": "123456",
          "vpc_region_id": "cn-shanghai"
        },
        {
          "vpc_id": "vpc-xyz987",
          "vpc_name": "my-nonprod",
          "vpc_owner_id": "098765",
          "vpc_region_id": "cn-shanghai"
        }
  ]



}

