 variable "db_instance_identifier"{
    default = "lm-mmx-psdv"
}
variable "db_snapshot_identifier"{
    default = "lm-mmx-psdv-snapshot"
}
variable "instance_class"{
    default = "db.m5.xlarge"
}
variable "identifier"{
    default = "lm-mmx-psdv-restored"
}
variable "db_subnet_group_name"{
    default = "lm-mmx-preprod-subnet-grp-1"
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

