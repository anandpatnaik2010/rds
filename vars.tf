variable "access_key" {
  default = ""
  }
variable "secret_key" {
  default = ""
  }
variable "region" {
  default = "ap-south-1"
  }

variable "db_instance_identifier"{
    default = "database-1"
}


variable "db_snapshot_identifier"{
    default = "database-snapshot"
}

variable "instance_class"{
    default = "db.t2.micro"
}

variable "identifier"{
    default = "database-1-restored"
}
