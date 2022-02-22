resource "aws_db_instance" "bar" {
  allocated_storage = 10
  engine            = "mysql"
  engine_version    = "8.0.27"
  instance_class    = "db.t2.micro"
  name              = "baz"
  password          = "barbar"
  username          = "foo"
}

resource "aws_db_snapshot" "test" {
  db_instance_identifier = aws_db_instance.bar.id
  db_snapshot_identifier = "testsnapshot"
}
