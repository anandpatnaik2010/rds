 variable "db_instance_identifier"{
    default = "db-prod"
}
variable "db_snapshot_identifier"{
    default = "db-prod-snapshot"
}
variable "instance_class"{
    default = "db.t2.micro"
}
variable "identifier"{
    default = "db-prod-restored"
}
variable "db_subnet_group_name"{
    default = "db-preprod-subnet-grp-1"
}

variable key_spec {
  default = "SYMMETRIC_DEFAULT"
}

variable enabled {
  default = true
}

variable rotation_enabled {
  default = true
}

variable alias {
  default = "cmk-test"
}

variable description {
  default = "create cmk to share snapshot"
}

