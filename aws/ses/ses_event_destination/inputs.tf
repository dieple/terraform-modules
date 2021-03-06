variable sed                      { default = false }
variable sns                      { default = false }
variable kinesis                  { default = false }
variable cloudwatch               { default = false }

variable name                     { default = "" }
variable enabled                  { default = "" }
variable matching_types           { default = [] type = "list" }
variable configuration_set_name   { default = "" }

#---CloudWatch Destination
variable value_source             { default = "" }
variable default_value            { default = "" }
variable dimension_name           { default = "" }

#---Kinesis Destination
variable role_arn                 { default = "" }
variable stream_arn               { default = "" }

#---SNS Topic
variable topic_arn                { default = "" }
