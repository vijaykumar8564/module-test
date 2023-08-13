variable "resourcegroup_details" {
    type = object({
            name=string
            location=string
            })
    default = {
      location = "eastus"
      name = "ntier"
    }
}

variable "vnet_details" {
    type = object({
        name=string
        address_space=list(string)    
    })
    default = {
        name = "my-vnet"
        address_space = [ "10.10.0.0/16" ]
    }
    description = "(optional) describe your variable"
}

variable "subnet_details" {
    type = object({
        names=list(string)
    })
    default = {
      names = [ "web","db" ]
    }
  
}
