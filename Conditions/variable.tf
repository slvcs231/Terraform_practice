variable "environment" {
    default = ["dev","test","prod"]
     
}

variable "instances" {
    default = ["redis","mongodb","netflix"]  
}