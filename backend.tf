resource "aws_db_snapshot" "subham-createSnapshot" {
db_instance_identifier = "${var.db_instance_identifier}"
#db_snapshot_identifier = "${var.db_snapshot_identifier}"
}

