resource "aws_db_snapshot" "lm-mmx-createSnapshot" {
db_instance_identifier = ""
db_snapshot_identifier = "${var.db_snapshot_identifier}"
}
