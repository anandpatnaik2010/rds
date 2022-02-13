resource "aws_db_snapshot" "subham-createSnapshot" {
db_instance_identifier = "${var.db_instance_identifier}"
db_snapshot_identifier = "${var.db_snapshot_identifier}"
}

resource "aws_db_instance" "subham-restoreDB" {
depends_on = [aws_db_snapshot.subham-createSnapshot]
snapshot_identifier = "${var.db_snapshot_identifier}"
skip_final_snapshot = true

}
