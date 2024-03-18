variable "ami" {
  description = "ami to be used by the instance"
  type        = list(string)
  default     = ["ami-080e1f13689e07408", "ami-0cd59ecaf368e5ccf", "ami-0fe630eb857a6ec83"]
}