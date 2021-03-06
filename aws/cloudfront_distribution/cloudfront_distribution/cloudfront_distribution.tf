#---s3 distribution
resource "aws_cloudfront_distribution" "s3_distribution" {

  origin {
    origin_id               = "${var.origin_id}"
    domain_name             = "${var.domain_name}"
    origin_path             = "${var.origin_path}"
    custom_header           = "${var.custom_header}"

    s3_origin_config {
      origin_access_identity = "${var.origin_access_identity}"
    }
  }

  enabled             = "${var.enabled}"
  aliases             = ["${var.aliases}"]
  comment             = "${var.comment}"
  web_acl_id          = "${var.web_acl_id}"
  price_class         = "${var.price_class}"
  is_ipv6_enabled     = "${var.is_ipv6_enabled}"
  default_root_object = "${var.default_root_object}"

  logging_config {
    bucket          = "${var.bucket}"
    prefix          = "${var.prefix}"
    include_cookies = "${var.include_cookies}"
  }

  default_cache_behavior {
    max_ttl                     = "${var.max_ttl}"
    min_ttl                     = "${var.min_ttl}"
    compress                    = "${var.compress}"
    default_ttl                 = "${var.default_ttl}"
    cached_methods              = "${var.cached_methods}"
    allowed_methods             = "${var.allowed_methods}"
    trusted_signers             = "${var.trusted_signers}"
    smooth_streaming            = "${var.smooth_streaming}"
    target_origin_id            = "${var.target_origin_id}"
    viewer_protocol_policy      = "${var.viewer_protocol_policy}"
    lambda_function_association = "${var.lambda_function_association}"

    forwarded_values {
      headers                   = "${var.headers}"
      query_string              = "${var.query_string}"
      query_string_cache_keys   = "${var.query_string_cache_keys}"

      cookies {
        forward                 = "${var.forward}"
        whitelisted_names       = "${var.whitelisted_names}"
      }
    }

    max_ttl                     = "${var.max_ttl}"
    min_ttl                     = "${var.min_ttl}"
    default_ttl                 = "${var.default_ttl}"
    viewer_protocol_policy      = "${var.viewer_protocol_policy}"
  }

  cache_behavior {
    max_ttl                     = "${var.max_ttl}"
    min_ttl                     = "${var.min_ttl}"
    compress                    = "${var.compress}"
    default_ttl                 = "${var.default_ttl}"
    path_pattern                = "${var.path_pattern}"
    cached_methods              = "${var.cached_methods}"
    allowed_methods             = "${var.allowed_methods}"
    trusted_signers             = "${var.trusted_signers}"
    smooth_streaming            = "${var.smooth_streaming}"
    target_origin_id            = "${var.target_origin_id}"
    viewer_protocol_policy      = "${var.viewer_protocol_policy}"
    lambda_function_association = "${var.lambda_function_association}"

    forwarded_values {
      headers                   = "${var.headers}"
      query_string              = "${var.query_string}"
      query_string_cache_keys   = "${var.query_string_cache_keys}"

      cookies {
        forward                 = "${var.forward}"
        whitelisted_names       = "${var.whitelisted_names}"
      }
    }

    max_ttl                     = "${var.max_ttl}"
    min_ttl                     = "${var.min_ttl}"
    default_ttl                 = "${var.default_ttl}"
    viewer_protocol_policy      = "${var.viewer_protocol_policy}"
  }

  restrictions {
    geo_restriction {
      locations                 = ["${var.locations}"]
      restriction_type          = "${var.restriction_type}"
    }
  }

  tags = "${var.tags}"

  viewer_certificate {
    ssl_support_method             = "${var.ssl_support_method}"
    iam_certificate_id             = "${var.iam_certificate_id}"
    acm_certificate_arn            = "${var.acm_certificate_arn}"
    minimum_protocol_version       = "${var.minimum_protocol_version}"
    cloudfront_default_certificate = "${var.cloudfront_default_certificate}"
  }

  lifecycle {
    create_before_destroy = true
  }
}
