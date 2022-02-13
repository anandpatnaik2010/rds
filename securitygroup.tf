resource "aws_db_snapshot" "subham-createSnapshot" {
db_snapshot_identifier = "${var.db_snapshot_identifier}"
}
