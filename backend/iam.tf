data "aws_iam_policy_document" "backend_ci_policy_document" {
  version = "2012-10-17"

  statement {
    effect    = "Allow"
    actions   = ["s3:ListBucket"]
    resources = ["arn:aws:s3:::${var.bucket}"]
  }

  statement {
    effect    = "Allow"
    actions   = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject"]
    resources = ["arn:aws:s3:::${var.bucket}/${var.key}"]
  }
}

resource "aws_iam_user" "backend_ci_user" {
  name = "ecovo-infra-ci"
}

resource "aws_iam_user_policy" "backend_ci_user_policy" {
  name   = "ecovo-infra-ci"
  user   = aws_iam_user.backend_ci_user.name
  policy = data.aws_iam_policy_document.backend_ci_policy_document.json
}

resource "aws_iam_access_key" "backend_ci_user_access_key" {
  user = aws_iam_user.backend_ci_user.name
}
