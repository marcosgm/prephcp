variable "app-subnetID" {
    description = "Subnet ID for the vNIC for the Application VM"
    type = string
}

variable "vm_size" {
    description = "VM Size"
    type = string
    default = "Standard_DS1_v2"
}
                