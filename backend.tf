resource "aws_db_snapshot" "subham-createSnapshot" {
db_instance_identifier = "${var.db_instance_identifier}"
db_snapshot_identifier = "${var.db_snapshot_identifier}"
}

resource "aws_db_instance" "subham-restoreDB" {
depends_on = [aws_db_snapshot.subham-createSnapshot]
instance_class = "${var.instance_class}"
identifier = "${var.identifier}"
db_subnet_group_name = "${var.db_subnet_group_name}"
snapshot_identifier = "${var.db_snapshot_identifier}"
skip_final_snapshot = true
#final_snapshot_identifier = "${var.identifier}-backup"
timeouts {
    create = "40m"
    delete = "40m"
    update = "40m"
  }
}
/*
#create CMK in current account
resource "aws_kms_key" "share-cms-key" {
  description              = var.description
  customer_master_key_spec = var.key_spec
  is_enabled               = var.enabled
}

# Add an alias to the key
resource "aws_kms_alias" "snap-share" {
  name          = "alias/${var.alias}"
  target_key_id = aws_kms_key.share-cms-key.key_id
}
*/
