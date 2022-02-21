resource "aws_iam_role" "test_role" {
  name = "test_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}
resource "aws_db_snapshot" "subham-createSnapshot" {
db_instance_identifier = "${var.db_instance_identifier}"
db_snapshot_identifier = "${var.db_snapshot_identifier}"
}

resource "aws_db_instance" "subham-restoreDB" {
depends_on = [aws_db_snapshot.subham-createSnapshot]
snapshot_identifier = "${var.db_snapshot_identifier}"
instance_class = "${var.instance_class}"
skip_final_snapshot = true

}
