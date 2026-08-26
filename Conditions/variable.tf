variable "environment" {
    default = "dev"  
}

variable "instances" {
    default = ["redis","mongodb","mysql"]  
}