variable name                  { default = [] type = "list" }
variable path                  { default = "/" }
variable service_aws           { default = "AWS" }
variable description           { default = {} type = "map" }
variable assume_role_policy    { default = {} type = "map" }
variable max_session_duration  { default = 43200 }
variable force_detach_policies { default = true }
