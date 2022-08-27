
module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "my-lambda"
  description   = "My awesome lambda function"
  handler       = "lambda_function.lambda_handler"
  runtime       = "dotnet6"

   source_path = "code/application.zip"

  tags = {
    Name = "my-lambda"
  }
}

# // LAMBDA FUNCTIONS
# resource "aws_lambda_function" "test_lambda" {
#   function_name = "lambda_function_name"
#   role          = aws_iam_role.iam_for_lambda.arn
#   handler       = "lambda_function.lambda_handler"
#   runtime       = "dotnet6"
#   code          = "code/application.zip"

#   ephemeral_storage {
#     size = 10240 # Min 512 MB and the Max 10240 MB
#   }
# }

# resource "aws_iam_role" "iam_for_lambda" {
#   name = "iam_for_lambda"

#   assume_role_policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Principal": {
#         "Service": "lambda.amazonaws.com"
#       },
#       "Effect": "Allow",
#       "Sid": ""
#     }
#   ]
# }
# EOF
# }
