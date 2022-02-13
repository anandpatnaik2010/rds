variable "access_key" {
  default = "AKIA5ZJKVQO52NGMQ43M"
  }
variable "secret_key" {
  default = "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"
  }
variable "region" {
  default = "us-east-2"
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
