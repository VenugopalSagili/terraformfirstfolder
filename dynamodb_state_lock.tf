# resource "aws_dynamodb_table" "dynamodb_tf_state_lock" {
#     name = "terraform_dynamodb_state_lock"
#     hash_key = "LockID"
#     read_capacity = 20
#     write_capacity = 20

#     attribute {
#       name = "LockID"
#       type = "S"
#     }

#     tags = {
#         name = "Dynamobd Terraform State Lock Table"
#     }
  
# }